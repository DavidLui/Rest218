class CreateCasseroledishes < ActiveRecord::Migration
  def change
    create_table :casseroledishes do |t|
      t.string :name
      t.string :price
      t.string :img

      t.timestamps
    end
    add_index :casseroledishes, :name
  end
end
