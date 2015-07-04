class CreatePorkbeefs < ActiveRecord::Migration
  def change
    create_table :porkbeefs do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :porkbeefs, :name
  end
end
