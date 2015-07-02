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
  ex.default_sheet = ex.sheets[1] #Mention the sheet number
  2.upto(1000) do |line| #start and end of row
    product = ex.cell(line,'A')
    water = ex.cell(line,'B')
    proteins = ex.cell(line,'C')
    fats = ex.cell(line,'D')
    carbohydrates = ex.cell(line,'E')
    ccal = ex.cell(line,'F')
    category_id = ex.cell(line,'G')

    @calorie = Calorie.create(:product => product,:water => water,:proteins => proteins, :fats => fats, :carbohydrates => carbohydrates, :ccal => ccal, :category_id => category_id)
  end
end