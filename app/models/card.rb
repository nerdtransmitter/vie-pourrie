class Card < ApplicationRecord
  acts_as_nested_set

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :journal_entries, dependent: :destroy
  has_many :wishlists, dependent: :destroy
  has_one_attached :photo

  def is_thematic?
    level == 0
  end

  def is_activity?
    level == 1
  end
end
