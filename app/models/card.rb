class Card < ApplicationRecord
  has_many :journal_entries, dependent: :destroy
  has_many :wishlists, dependent: :destroy
end
