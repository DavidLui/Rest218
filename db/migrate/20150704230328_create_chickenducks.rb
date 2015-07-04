class CreateChickenducks < ActiveRecord::Migration
  def change
    create_table :chickenducks do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :chickenducks, :name
  end
end
