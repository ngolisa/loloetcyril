class UsersController < ApplicationController
  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    group = Group.create
    @user.group = group
    if @user.save
      redirect_to invites_path
    else
      render 'new'
    end
  end

  def invites
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :phone, :password)
  end
end
