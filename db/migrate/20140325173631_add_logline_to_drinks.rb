class AddLoglineToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :logline, :string
  end
end
