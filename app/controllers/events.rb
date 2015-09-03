get '/events' do
  erb :'events/index'
end

post "/events" do
  event = Event.new(params[:event])
  diet = Diet.new(params[:diet])
  invitation = Invitation.new(host: true)
  event.diet = diet
  if event.save
    event.invitations << invitation
    current_user.invitations << invitation
    redirect "/users/#{current_user.id}"
  else
    erb :"users/show"
  end
end

get "/events/:id" do
  @event = Event.find(params[:id])
  erb :"/events/show"
end
