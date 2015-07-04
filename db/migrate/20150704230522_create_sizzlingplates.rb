class CreateSizzlingplates < ActiveRecord::Migration
  def change
    create_table :sizzlingplates do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :sizzlingplates, :name
  end
end
