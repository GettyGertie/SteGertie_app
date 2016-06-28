class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
      flash[:success] = "Yaay! you're in!"
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username,
                                 :email)
  end
end
