class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.integer :measurement
      t.string :unit_of_measure
      t.boolean :alcohol

      t.timestamps
    end
  end
end
