class SeedProducts < ActiveRecord::Migration
  def up
    ex = Roo::Excelx.new("#{Rails.root}/public/productCalories.xlsx")
    ex.default_sheet = 'products' #Mention the sheet number
    2.upto(225) do |line| #start and end of row
      product = ex.cell(line,'A')
      water = ex.cell(line,'B')
      proteins = ex.cell(line,'C')
      fats = ex.cell(line,'D')
      carbohydrates = ex.cell(line,'E')
      ccal = ex.cell(line,'F')
      product_category_id = ProductCategory.find_by(name: ex.cell(line,'G')).try(:id)

      product = Product.create(:product => product,:water => water,:proteins => proteins, :fats => fats,
                               :carbohydrates => carbohydrates, :ccal => ccal, product_category_id: product_category_id)
    end
  end

  def down
    Product.destroy_all
  end
end
