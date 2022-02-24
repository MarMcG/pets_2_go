class RemoveImgUrlAndLocationFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :location
    remove_column :pets, :img_url
  end
end
