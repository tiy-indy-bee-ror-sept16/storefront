# rails generate migration add_total_quantity_to_items total_quantity:integer

class AddTotalQuantityToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :total_quantity, :integer
  end
end
