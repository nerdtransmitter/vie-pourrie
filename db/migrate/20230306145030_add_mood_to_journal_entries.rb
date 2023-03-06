class AddMoodToJournalEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :journal_entries, :mood, :string
  end
end
