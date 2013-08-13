class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :hours_worked
      t.boolean :paid

      t.timestamps
    end
  end
end
