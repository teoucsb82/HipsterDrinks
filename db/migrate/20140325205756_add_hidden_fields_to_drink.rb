class AddHiddenFieldsToDrink < ActiveRecord::Migration
  def change
    add_column :drinks, :hidden_fields, :text, default: ""
  end
end
