class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.integer :user_id, null: false
      t.string :name, null: false, unique: true 
      t.text :description

      t.timestamps
    end
    add_index :drinks, :name
  end
end
