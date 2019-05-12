class RemoveItemFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :item, :string
  end
end
