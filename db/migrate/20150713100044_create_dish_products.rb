class CreateDishProducts < ActiveRecord::Migration
  def change
    create_table :dish_products do |t|
      t.integer :dish_id
      t.integer :product_id
      t.float :weight

      t.timestamps null: false
    end
  end
end
