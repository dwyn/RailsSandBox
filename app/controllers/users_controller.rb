class UsersController < ApplicationController
  
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.create!(
      username: user_params[:username], 
      email: user_params[:email], 
      password: 
      user_params[:password])

    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
  end

end
