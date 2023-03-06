class CreateJournalEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries do |t|
      t.text :content
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
