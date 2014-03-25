class FixDescriptionToRecipeOnDrinks < ActiveRecord::Migration
  def change
  	rename_column :drinks, :description, :recipe
  end
end
