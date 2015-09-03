get '/login' do
  erb :'sessions/login'
end

post '/login' do
  @user=User.find_by_username(params[:username])
  if @user && @user.authenticate(params[:password])
    session[:id] = @user.id
    redirect "/users/show"
  else
    erb :"sessions/login"
  end
end

get '/logout' do
  logout
  redirect to "/"
end
