class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :item, null: false
      t.decimal :price, null: false, precision: 15, scale: 2
      t.integer :quantity, null: false
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
