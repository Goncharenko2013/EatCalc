ActiveAdmin.register Dish do


permit_params :name, :id, roles: []
#accepts_nested_attributes_for :products, :dish_products

  form do |f|
    f.inputs 'Dish' do
      f.input :name
      f.input :products, as: :check_boxes, collection: Product.all

      #f.input :weight
    end
    f.actions
  end
  end
