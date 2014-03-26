class FixLoglineString < ActiveRecord::Migration
  def up
    change_column :drinks, :logline, :text
	end
	def down
	    # This might cause trouble if you have strings longer
	    # than 255 characters.
	    change_column :drinks, :logline, :string
	end
end
