class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def show
    @user = User.find(param[:id])
  end
  def new
    @user = User.new
  end

  def create
    @user = User.find(param[:id])
    @user.create(user_params(:name))
    redirect_to user_path
  end

  def destroy
    @user = User.find(param[:id])
    @user.destroy
  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end
end
