class SeedProductCategories < ActiveRecord::Migration
  def up
    require 'roo'
    ex = Roo::Excelx.new("#{Rails.root}/public/productCalories.xlsx")
    ex.default_sheet = ex.sheets.last #Mention the sheet number
    2.upto(18) do |line| #start and end of row
      category_name = ex.cell(line,'A')
      @product_category = ProductCategory.create(:name => category_name)
    end
  end

  def down
    ProductCategory.destroy_all
  end
end
