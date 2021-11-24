class Toothbrush < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :delete_all
  validates :title, :description, :category, :photo, :price, :brand, presence: true
  validates :title, length: { minimum: 4 }
  validates :title, length: { minimum: 20 }
end
