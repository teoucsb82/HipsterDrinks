class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :favoritor_id
      t.integer :favorited_id

      t.timestamps
    end
    add_index :favorites, :favoritor_id
    add_index :favorites, :favorited_id
    add_index :favorites, [:favoritor_id, :favorited_id], unique: true
  end
end
