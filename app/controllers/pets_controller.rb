class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def edit
  end

  def create
  end

  def new
  end

  def delete
  end

  def update
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
