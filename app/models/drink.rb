# == Schema Information
#
# Table name: drinks
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :text             not null
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

class Drink < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :user_id, presence: true

	belongs_to :user
	has_attached_file :image, styles: { medium: "320x240>", :thumb => "100x100>" }
 	validates_attachment :image, presence: true,
	                      content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
	                      size: { less_than: 2.megabytes }

end
