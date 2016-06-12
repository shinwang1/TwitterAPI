helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end

  def current_board
    @current_board ||= Board.find(params[:id])
  end
end
