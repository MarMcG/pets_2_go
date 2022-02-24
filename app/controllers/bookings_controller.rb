class BookingsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_booking, only: [:destroy]
  before_action :set_pet, only: [:new, :create, :show]

  def new
    @booking = Booking.new
    @booking.pet = @pet
  end

  def create
    @booking = Booking.new(booking_params)

    # @pet = Pet.find(params[:pet_id])
    @booking.pet = set_pet
    @booking.user = current_user
    # raise
    if @booking.save
      redirect_to user_bookings_path(current_user)
    else
      render 'bookings/new'
    end
  end

  def index
    @bookings = Booking.all
  end

  def show; end

  def destroy
    @booking.destroy
    redirect_to my_pets_path
  end

  def user_bookings
    @user_bookings = Booking.where(user_id: current_user.id)
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "You have booked this pet!."
    else
      render :edit
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :pet_id, :user_id, :status)
  end

end
