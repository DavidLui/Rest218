class CreateChefrecommends < ActiveRecord::Migration
  def change
    create_table :chefrecommends do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :chefrecommends, :name
  end
end
