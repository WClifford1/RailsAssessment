class AddCartidToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :order, :string
    add_reference :orders, :cart, foreign_key: true
  end
end
