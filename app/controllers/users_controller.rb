class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new (user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render 'new'
      errors.add ("cannot add user")
    end
  end

  private
    def user_params
      params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
    end

end
