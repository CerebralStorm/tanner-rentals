class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :user_id
      t.integer :property_id
      t.float :rent
      t.float :security_deposit
      t.float :additional_charges
      t.float :total_charges
      t.float :late_fee
      t.float :pet_fee
      t.float :parking_fee
      t.float :dishonored_check_fee
      t.text :included_utilities
      t.text :occupants
      t.text :additional_parking
      t.integer :days_late
      t.string :make_payable_to
      t.string :owner_notice_address
      t.integer :days_security_deposit_return
      t.integer :days_security_deposit_notice
      t.integer :day_rent_due
      t.boolean :month_to_month
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :resident_consent_to_esign
      t.boolean :owner_consent_to_esign
      t.datetime :resident_sign_date
      t.datetime :owner_sign_date
      t.string :resident_sig_url
      t.string :owner_sig_url

      t.timestamps
    end
    add_index :leases, [:user_id, :property_id]
  end
end
