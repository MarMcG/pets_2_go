class BookingsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_booking, only: [:show, :update]

  def show; end

  def new
    @booking = Booking.new
    @offer = Offer.where(id: params[:offer_id]).first
  end

  def create
    @booking = Booking.new(booking_params)
    @offer = Offer.where(id: params[:offer_id]).first
    @booking.offer = @offer
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/new'
    end
  end

  def user_bookings
    @user_bookings = Booking.where(user_id: current_user.id)
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "The booking was confirmed successfully."
    else
      render :edit
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :confirmed)
  end

end
