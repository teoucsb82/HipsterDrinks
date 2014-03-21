class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name, null: false, unique: true

      t.timestamps
    end
    add_index :ingredients, :name
  end
end
