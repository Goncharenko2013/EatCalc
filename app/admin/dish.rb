ActiveAdmin.register Dish do


permit_params :name, :id, roles: []
#accepts_nested_attributes_for :products, :dish_products

end
