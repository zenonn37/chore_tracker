class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.references :user	 
      t.string :name
      t.boolean :active, default: true
      t.text :notes
      t.text :summary

      t.timestamps
    end
    add_index(:chores, :name)
  end
end
