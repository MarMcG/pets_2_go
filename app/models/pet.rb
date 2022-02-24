class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :pet_type, :name, :description, :age, :rate, presence: true
end
