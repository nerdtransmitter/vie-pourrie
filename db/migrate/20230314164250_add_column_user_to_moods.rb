class AddColumnUserToMoods < ActiveRecord::Migration[7.0]
  def change
    add_reference :moods, :user, null: false, foreign_key: true
  end
end
