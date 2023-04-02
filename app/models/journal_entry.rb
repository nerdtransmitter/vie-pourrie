class JournalEntry < ApplicationRecord
  belongs_to :user
  belongs_to :card

  # EMOTIONS = %w[heureux triste stressé calme en colère excité anxieux agacé]
end
