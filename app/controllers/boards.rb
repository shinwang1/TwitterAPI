get '/boards/new' do
  erb :'boards/new' #show new boards view
end

post '/boards' do
  @user = User.find_by(id: current_user.id)
  @boards = @user.boards.create(params[:board])
  # redirect :'/sessions/profile'
  redirect :"/users/#{@user.id}"
end

get '/boards/:board_id/channels/new' do
  @board_id = params[:board_id]
  erb :'channels/new'
end

post '/boards/:board_id/channels' do
  @board = Board.find(params[:board_id])
  @board.channels.create(params[:channel])

  redirect :"/users/#{current_user.id}"
end

get '/boards/:id' do
  @board = Board.find(params[:id])
  channel = @board.channels[0].twitter_handle
  @user_tweets = get_timeline(channel).take(20)

  erb :'/boards/show'
end
