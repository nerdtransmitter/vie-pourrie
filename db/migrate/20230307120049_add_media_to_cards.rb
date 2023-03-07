class AddMediaToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :video, :string
    add_column :cards, :playlist, :string
    add_column :cards, :website, :string
    add_column :cards, :address, :string
  end
end
