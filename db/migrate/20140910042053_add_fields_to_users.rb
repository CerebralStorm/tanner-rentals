class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :has_lease, :boolean, default: false
    add_column :users, :role, :string, default: "Tenant"
  end
end
