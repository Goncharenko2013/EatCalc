# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'roo'

def fetch_excel_data
  ex = Excel.new("#{Rails.root}/public/productCalories.xlsx")
  ex.default_sheet = ex.sheets[2] #Mention the sheet number
  2.upto(225) do |line| #start and end of row
    product = ex.cell(line,'A')
    water = ex.cell(line,'B')
    proteins = ex.cell(line,'C')
    fats = ex.cell(line,'D')
    carbohydrates = ex.cell(line,'E')
    ccal = ex.cell(line,'F')

    @product = Product.create(:product => product,:water => water,:proteins => proteins, :fats => fats, :carbohydrates => carbohydrates, :ccal => ccal)
  end
end

def fetch_excel_data
  ex = Excel.new("#{Rails.root}/public/productCalories.xlsx")
  ex.default_sheet = ex.sheets[3] #Mention the sheet number
  2.upto(225) do |line| #start and end of row
    category_name = ex.cell(line,'G')
    category_code = ex.cell(line,'H')

    @product_category = Product_category.create(:category_name => category_name,:category_code => category_code)
  end
end
