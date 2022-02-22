class PetsController < ApplicationController

  def index
    @pet = Pet.all
  end
end
