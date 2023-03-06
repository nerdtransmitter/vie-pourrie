class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, :username, presence: true, uniqueness: true
  has_one_attached :photo
  has_many :cards, through: :wishlists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
