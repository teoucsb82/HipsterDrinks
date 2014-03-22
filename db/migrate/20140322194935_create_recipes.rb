class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :drink_id
      t.integer :ingredient_id

      t.timestamps
    end
    add_index :recipes, :drink_id
    add_index :recipes, :ingredient_id
  end
end
