class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :vegetables, :name
  end
end
