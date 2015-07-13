class Dish < ActiveRecord::Base
  has_many :dish_products
  has_many :products, through: :dish_products
end
