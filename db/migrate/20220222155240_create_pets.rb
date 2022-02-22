class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :type
      t.string :name
      t.string :description
      t.integer :age
      t.integer :rate
      t.string :img_url
      t.string :title
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
