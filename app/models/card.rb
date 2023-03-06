class Card < ApplicationRecord
  acts_as_nested_set

  has_many :journal_entries, dependent: :destroy
  has_many :wishlists, dependent: :destroy

  def is_thematic?
    level == 0
  end

  def is_activity?
    level == 1
  end
end
