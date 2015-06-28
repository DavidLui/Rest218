class AddPriceAndFoodtypeToPins < ActiveRecord::Migration
  def change
    add_column :pins, :price, :string
    add_column :pins, :foodtype, :string
  end
end
