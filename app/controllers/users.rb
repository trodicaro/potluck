get "/users/new" do
  @user = User.new
  erb :"users/new"
end

post "/users" do
  @user = User.new(params[:user])
  if @user.save
    redirect "/users/show"
  else
    erb :"users/new"
  end
end

get "/users/:id" do

  if current_user
    erb :"users/show"
  else
    redirect to "/login"
  end
end

