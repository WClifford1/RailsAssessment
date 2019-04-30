class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :price
      t.integer :quantity
      t.string :description
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
