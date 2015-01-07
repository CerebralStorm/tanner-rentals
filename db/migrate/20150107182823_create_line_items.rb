class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :bill_id
      t.string :description
      t.float :amount
      t.string :type

      t.timestamps
    end
  end
end
