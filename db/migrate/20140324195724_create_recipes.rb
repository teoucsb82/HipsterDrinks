class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :drink_id, null: false
      t.integer :ingredient_id, null: false

      t.timestamps
    end
    add_index :recipes, :drink_id
    add_index :recipes, :ingredient_id
  end
end
