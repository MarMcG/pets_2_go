class Pet < ApplicationRecord
  belongs_to :user

  validates :type, :name, :description, :age, :location, presence: true
end
