class AddAncestrydepthCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :ancestry_depth, :integer, :default => 0
  end

  def down
    remove_column :categories, :ancestry_depth
  end
end
