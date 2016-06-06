get '/tweet/new' do
  if current_user
    erb :'tweet/new'
  else
    erb :index
  end
end

post '/tweet' do
  if current_user
    tweet(params[:tweet])
    redirect '/tweet/new'
  else
    redirect '/tweet/new'
  end
end