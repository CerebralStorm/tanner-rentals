class AddPaymentDateToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :payment_date, :datetime
  end
end
