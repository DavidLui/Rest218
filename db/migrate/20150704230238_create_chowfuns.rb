class CreateChowfuns < ActiveRecord::Migration
  def change
    create_table :chowfuns do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :chowfuns, :name
  end
end
