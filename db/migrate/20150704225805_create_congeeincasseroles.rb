class CreateCongeeincasseroles < ActiveRecord::Migration
  def change
    create_table :congeeincasseroles do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :congeeincasseroles, :name
  end
end
