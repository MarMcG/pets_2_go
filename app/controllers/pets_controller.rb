class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user

    if @pet.save!
      redirect_to @pet, notice: 'Pet was successfully created.'

    else
      render :new, notice: 'Listing unsuccessful. Please try again.'
    end
  end

  def edit
  end

  def destroy
    @pet.destroy
    redirect_to pets_path, notice: "Pet was succefully deleted"
  end

  def index
    @pets = Pet.all
    markers
  end

  def show
    @booking = Booking.new
    @booking.pet = @pet
  end

  def destroy
    @pet.destroy
    redirect_to pets_path, notice: "Pet was succefully deleted"
  end

  def update
    if @pet.update(pet_params)
      redirect_to @pet, notice: "Pet was succefully updated"
    else
      render :edit
    end
  end

  def my_pets
    @pets = Pet.where(user_id: current_user.id)
    @bookings = @pets.map do |pet|
    [pet, Booking.where(pet: pet)]
    end
  end

  private
  def markers
    @markers = @pets.geocoded.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        image_url: helpers.asset_url("marker_3.png")
      }

    end
    # raise
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:pet_type, :name, :age, :description, :address, :photo, :rate)
  end
end

#why this does not work
