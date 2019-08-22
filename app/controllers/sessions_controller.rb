class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:user][:username])

    if user && user.authenticate(params[:user][:password])
      binding.pry
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
