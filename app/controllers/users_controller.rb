class UsersController < ApplicationController
  def show
    uid = session[:uid].to_i
    user = User.find uid
    if user
      render json: {
        user: user
      }, status: :ok
    else
      render json: {
        message: "User can not be found"
      }, status: :not_found
    end
  end
end
