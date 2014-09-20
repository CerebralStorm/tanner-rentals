class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :unit_id
      t.string :url
      t.boolean :feature

      t.timestamps
    end
    add_index :photos, :unit_id
  end
end
