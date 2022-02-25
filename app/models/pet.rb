class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  validates :pet_type, :name, :description, :age, :photo, :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
