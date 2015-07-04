class CreateLomeins < ActiveRecord::Migration
  def change
    create_table :lomeins do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :lomeins, :name
  end
end
