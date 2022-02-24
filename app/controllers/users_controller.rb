class UsersController < ApplicationController

  def index
    user_pets
  end

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
    user_pets
  end

  private

  def user_bookings
    @user_bookings = Booking.where(user_id: current_user.id)
  end

  def user_pets
    @pets = Pet.where(user_id: current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :img_url)
  end
end
