class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :description, :name, :price, :category, :address, presence: true, allow_blank: false
end
