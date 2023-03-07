class AddCoordinatesToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :latitude, :float
    add_column :cards, :longitude, :float
  end
end
