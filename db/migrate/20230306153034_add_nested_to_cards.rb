class AddNestedToCards < ActiveRecord::Migration[7.0]
  def self.up
    add_column :cards, :parent_id, :integer # Comment this line if your project already has this column
    # Category.where(parent_id: 0).update_all(parent_id: nil) # Uncomment this line if your project already has :parent_id
    add_column :cards, :lft,       :integer
    add_column :cards, :rgt,       :integer

    # optional fields
    add_column :cards, :depth,          :integer
    add_column :cards, :children_count, :integer

    # This is necessary to update :lft and :rgt columns
    Card.reset_column_information
    Card.rebuild!
  end

  def self.down
    remove_column :cards, :parent_id
    remove_column :cards, :lft
    remove_column :cards, :rgt

    # optional fields
    remove_column :cards, :depth
    remove_column :cards, :children_count
  end
end
