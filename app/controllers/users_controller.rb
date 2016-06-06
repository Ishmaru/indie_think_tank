class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

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
      # errors.add ("Cannot add user")
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      flash[:notice] = "Updated Profile!"
      redirect_to user_path
    else
      render 'edit'
      # errors.add ("Cannot update user")
    end
  end

 def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Account Removed."
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
    end

end
