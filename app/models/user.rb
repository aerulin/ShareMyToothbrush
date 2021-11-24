class User < ApplicationRecord
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :toothbrushes, dependent: :delete_all
  has_many :bookings, dependent: :delete_all
  
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
