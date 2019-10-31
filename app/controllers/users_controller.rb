# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = nil
  end

  def show
    @user = User.find(params[:id])
  end

  # def new
  #   @user = User.new
  # end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
      flash[:success] = "Welcome #{@user.first_name}!"
    else
      flash.now[:error] = "Nope!"
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :email, :password)
    end

end
