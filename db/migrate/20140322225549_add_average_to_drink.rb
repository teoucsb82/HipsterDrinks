class AddAverageToDrink < ActiveRecord::Migration
  def change
    add_column :drinks, :average, :float, default: 0.0
  end
end
