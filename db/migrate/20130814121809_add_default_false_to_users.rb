class AddDefaultFalseToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :paid
  	add_column  :users, :is_paid,:boolean, default: false
  end
end
