ActiveAdmin.register Dish do


permit_params :name, :id, dish_products_attributes: [:product_id, :weight]

  form do |f|
    f.inputs 'Dish' do
      f.input :name, placeholder: 'insert name of your own dish'
      f.inputs "Products" do
        f.has_many :dish_products, heading: false, allow_destroy: true do |dp|
          dp.input :product_id, :as => :select, :collection => option_groups_from_collection_for_select(ProductCategory.all, :products, :name, :id, :product)
          # dp.input :product_id, :as => :select, :collection => Product.all.pluck(:product, :id)
          dp.input :weight, placeholder: 'insert component product weight in gram'
        end
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :user_id
      table_for dish.dish_products do
        column "Product" do |dish_product|
          dish_product.product.product
        end
        column :weight
      end
    end
  end

end
