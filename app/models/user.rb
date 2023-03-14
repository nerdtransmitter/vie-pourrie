class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :email, :username, presence: true, uniqueness: true
  has_one_attached :photo
  has_many :wishlists
  has_many :journal_entries
  has_many :cards, through: :wishlists
  has_many :moods

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
