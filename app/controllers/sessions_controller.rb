class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user
      session[:uid] ||= user.id
      render json: {
        user: user
      }, status: :ok
    else
      render json: {
        message: "User does not exist"
      }, status: :not_found
    end
  end

  def destroy
    session.delete :uid
    head :no_content
  end

end
