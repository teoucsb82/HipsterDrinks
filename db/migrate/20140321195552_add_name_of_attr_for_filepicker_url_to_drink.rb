class AddNameOfAttrForFilepickerUrlToDrink < ActiveRecord::Migration
    def up
        add_column :drinks, :filepicker_url, :string
    end

    def down
        remove_column :drinks, :filepicker_url
    end
end
