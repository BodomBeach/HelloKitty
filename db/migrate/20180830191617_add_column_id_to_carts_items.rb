class AddColumnIdToCartsItems < ActiveRecord::Migration[5.2]
  def change
    add_column :carts_items, :id, :primary_key
  end
end
