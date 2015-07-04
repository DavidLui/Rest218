class CreateLunchspecials < ActiveRecord::Migration
  def change
    create_table :lunchspecials do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :lunchspecials, :name
  end
end
