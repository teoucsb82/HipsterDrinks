class AddAttachmentPhotoToDrinks < ActiveRecord::Migration
  def self.up
    change_table :drinks do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :drinks, :photo
  end
end
