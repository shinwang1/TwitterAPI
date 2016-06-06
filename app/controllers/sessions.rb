# aka "Login"
get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions/new' do
  user = User.new(username: params[:user][:username], password: params[:user][:password])
  if user
    user.save
    session[:id] = user.id
    redirect '/landing'
  else
    redirect '/sessions/new'
  end
end

get '/sessions/login' do
  erb :"sessions/login"
end

post '/sessions/login' do
    user = User.find_by(username: params[:user][:username])
    
    if user && user.authenticate(params[:user][:password])
      session[:id] = user.id
      redirect '/landing'
    else
      @error = "Your password or email was incorrect"
      redirect '/sessions/login'
    end
end

get '/logout' do
  session.clear
  redirect '/'
end
