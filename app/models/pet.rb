class Pet < ApplicationRecord
  belongs_to :user

  validates :pet_type, :name, :description, :age, :location, presence: true
end
