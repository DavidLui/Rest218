class CreateShells < ActiveRecord::Migration
  def change
    create_table :shells do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :shells, :name
  end
end
