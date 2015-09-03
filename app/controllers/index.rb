get '/' do
  if current_user
    redirect to("/events")
  else
    erb :'sessions/login'
  end
end

