ActiveAdmin.register Dish do


permit_params :name, :id, dish_products_attributes: [:product_id, :weight]

  form do |f|
    f.inputs 'Dish' do
      f.input :name
      f.inputs "Products" do
        f.has_many :dish_products, heading: false, allow_destroy: true do |dp|
          dp.input :product_id, :as => :select, :collection => Product.all.pluck(:product, :id)
          dp.input :weight
        end
      end
    end
    f.actions
  end
  end
