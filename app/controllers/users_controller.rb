class UsersController < ApplicationController

  # def index

  # end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to 'pages#home'
    end
  end

  def show
    @username = current_user.email
  end

  private

  def user_params
    params.require(:user).permit(:email, :img_url)
  end
end
