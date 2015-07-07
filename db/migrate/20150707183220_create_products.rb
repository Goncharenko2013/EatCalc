class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product
      t.float :water
      t.float :proteins
      t.float :fats
      t.float :carbohydrates
      t.integer :ccal

      t.timestamps null: false
    end
  end
end
