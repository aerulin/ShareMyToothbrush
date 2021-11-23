class Toothbrush < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :delete_all
end
