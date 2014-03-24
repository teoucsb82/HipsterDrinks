class AddSlugToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :slug, :string
    add_index :drinks, :slug
  end
end
