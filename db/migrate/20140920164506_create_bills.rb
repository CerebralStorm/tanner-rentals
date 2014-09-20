class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :lease_id
      t.integer :user_id
      t.datetime :date_issued
      t.datetime :date_due
      t.string :status

      t.timestamps
    end
  end
end
