class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(username: "...", email: "...", password: "...")

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def follow
    @user = User.find(params[:id])
    current_user.followees << @user
    redirect_to user_path(@user)
  end
  
  def unfollow
    @user = User.find(params[:id])
    current_user.followed_users.find_by(followee_id: @user.id).destroy
    redirect_to user_path(@user)
  end
end
