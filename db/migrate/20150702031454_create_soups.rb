class CreateSoups < ActiveRecord::Migration
  def change
    create_table :soups do |t|
      t.string :name
      t.string :price

      t.timestamps
    end
    add_index :soups, :name
  end
end
