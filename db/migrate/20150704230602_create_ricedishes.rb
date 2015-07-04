class CreateRicedishes < ActiveRecord::Migration
  def change
    create_table :ricedishes do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :ricedishes, :name
  end
end
