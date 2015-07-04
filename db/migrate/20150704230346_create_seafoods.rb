class CreateSeafoods < ActiveRecord::Migration
  def change
    create_table :seafoods do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :seafoods, :name
  end
end
