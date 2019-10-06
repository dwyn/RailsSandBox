# frozen_string_literal: true

class SessionsController < ApplicationController

  def new
  end

  def create
    #! First find the user in the database
    user = User.find_by(username: params[:user][:username])

    #! Next try to authenticate the user
    @user = user.try(:authenticate, params[:user][:password])

    #! Redirect to the signing form, if the @user could not authenticate
    return redirect_to(controller: 'sessions', action: 'new') unless @user

    #! Set the session for Rails to track the user
    session[:user_id] = @user.id

    #! If it all works out, redirect to ...
    redirect_to controller: 'welcome', action: 'home'
  end

  def destroy
    session.delete :user_id

    redirect_to '/'
  end

end
