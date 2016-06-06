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

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to show_user_path
    else
      render 'edit'
    end
  end


 def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
    def user_params
      params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
    end

end
