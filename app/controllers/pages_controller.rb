class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]
  def home
    @pets = Pet.all.shuffle.first(3)
  end
end
