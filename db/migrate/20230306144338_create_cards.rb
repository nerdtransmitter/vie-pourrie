class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.boolean :outside
      t.boolean :active
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
