class CreateDrinkIngredients < ActiveRecord::Migration
  def change
    create_table :drink_ingredients do |t|
      t.integer :drink_id
      t.integer :ingredient_id
      t.float :measurement_amount
      t.string :measurement_unit

      t.timestamps
    end
    add_index :drink_ingredients, :drink_id
    add_index :drink_ingredients, :ingredient_id
  end
end
