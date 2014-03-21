# == Schema Information
#
# Table name: drinks
#
#  id                 :integer          not null, primary key
#  name               :string(255)      not null
#  description        :text             not null
#  created_at         :datetime
#  updated_at         :datetime
#  user_id            :integer
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class Drink < ActiveRecord::Base
	attr_reader :filepicker_url

	validates :name, presence: true
	validates :description, presence: true
	validates :user_id, presence: true

	belongs_to :user
 	has_many :comments, as: :commentable


	def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end

end
