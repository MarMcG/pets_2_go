class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def edit
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save!
      redirect_to @pet, notice: 'Pet was successfully created.'
    else
      "pet did not create"
    end
  end

  def new
    @pet = Pet.new
  end

  def destroy
    @pet.destroy
    redirect_to pets_path, notice: "Pet was succefully deleted"
  end

  def update
    if @pet.update(pet_params)
      redirect_to @pet, notice: "Pet was succefully created"
    else
      render :edit
    end
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:pet_type, :name, :age, :description, :location, :photo)
  end
end
