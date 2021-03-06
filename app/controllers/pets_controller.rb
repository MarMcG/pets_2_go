class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :destroy]
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
    redirect_to my_pets_path, alert: "Pet was succefully deleted"
  end

  def index
    @pets = Pet.all
    markers
    if params[:query].present?
      sql_query = " \
        pets.pet_type @@ :query \
        OR pets.name @@ :query \
        OR pets.address @@ :query \
        OR users.username @@ :query \
      "
      @pets = Pet.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @pets = Pet.all
    end
  end

  def show
    @booking = Booking.new
    @booking.pet = @pet
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
    [pet, Booking.where(pet: pet).where.not(user: current_user)]
    end
    # raise
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
