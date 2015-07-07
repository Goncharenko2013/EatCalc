class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :category_name
      t.integer :category_code

      t.timestamps null: false
    end
  end
end
