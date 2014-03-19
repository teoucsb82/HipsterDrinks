class AddUserIdToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :user_id, :integer
    add_index :drinks, :user_id
  end
end
