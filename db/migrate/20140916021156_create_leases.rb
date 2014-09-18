class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :user_id
      t.integer :property_id
      t.float :rent
      t.integer :day_rent_due
      t.boolean :month_to_month
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
    add_index :leases, [:user_id, :property_id]
  end
end
