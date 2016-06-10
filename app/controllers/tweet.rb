get '/tweet/new' do
  if current_user
    erb :'tweet/new'
  else
    erb :index
  end
end

# post '/tweet' do
#   if current_user
#     tweet(params[:tweet])
#     redirect '/tweet/new'
#   else
#     redirect '/tweet/new'
#   end
# end

get '/tweet/search' do
  if current_user
    # tweet(params[:tweet])
    @display_tweets = tweet_search(params[:tweet])
    erb :'/tweet/search'
  else
    erb :'/tweet/new'
  end
end