post '/events/:id/invitations' do
  event = Event.find(params[:id])
  invitation = event.invitations.new(user_id: current_user.id)
  if invitation.save
    redirect "/events/#{event.id}"
  else
    "Error"
  end
end
