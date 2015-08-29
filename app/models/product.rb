class Product < ActiveRecord::Base
  belongs_to :product_category
  has_many :dish_products
  has_many :dishes, through: :dish_products

  validates :product, :presence => true
  validates :product, :uniqueness => { :case_sensitive => false }
  validates :product, :uniqueness => true
end
