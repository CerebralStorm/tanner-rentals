class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :property_id
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :square_feet
      t.string :description_header
      t.text :description

      t.timestamps
    end
  end
end
