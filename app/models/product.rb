class Product < ActiveRecord::Base
  belongs_to :product_category
  has_many :dish_products
  has_many :dishes, through: :dish_products
end
