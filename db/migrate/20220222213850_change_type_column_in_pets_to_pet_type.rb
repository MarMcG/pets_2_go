class ChangeTypeColumnInPetsToPetType < ActiveRecord::Migration[6.1]
  def change
    rename_column :pets, :type, :pet_type
  end
end
