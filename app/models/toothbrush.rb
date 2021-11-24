class Toothbrush < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :delete_all
  validates :title, :description, :photo, :price, :brand, presence: true
  validates :title, length: { minimum: 4 }
  validates :description, length: { minimum: 20 }
end
