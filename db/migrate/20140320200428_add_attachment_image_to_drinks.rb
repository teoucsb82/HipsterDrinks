class AddAttachmentImageToDrinks < ActiveRecord::Migration
  def self.up
    change_table :drinks do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :drinks, :image
  end
end
