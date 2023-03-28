class Card < ApplicationRecord
  acts_as_nested_set

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :journal_entries, dependent: :destroy
  has_many :wishlists, dependent: :destroy
  has_one_attached :photo

  def is_thematic?
    level.zero?
  end

  def is_activity?
    level == 1
  end

  def filter_video_url
    return unless video

    match = video.match(/\b=.*(\b&|\z)/).to_s
    return match[1..-2] if match[-1] == "&"

    return match[1..]
  end
end
