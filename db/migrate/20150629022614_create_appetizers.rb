class CreateAppetizers < ActiveRecord::Migration
  def change
    create_table :appetizers do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :appetizers, :name
  end
end
