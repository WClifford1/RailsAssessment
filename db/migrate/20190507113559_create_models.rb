class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :product
      t.string :title
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
