#aka Profile page
get '/users/:id' do
  @user = User.find(params[:id])
  @boards = @user.boards
  erb :'sessions/profile'
end
