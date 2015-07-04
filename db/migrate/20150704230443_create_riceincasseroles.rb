class CreateRiceincasseroles < ActiveRecord::Migration
  def change
    create_table :riceincasseroles do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :riceincasseroles, :name
  end
end
