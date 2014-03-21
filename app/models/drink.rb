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
	attr_reader :photo

	validates :name, presence: true
	validates :description, presence: true
	validates :user_id, presence: true

	belongs_to :user
 	has_many :comments, as: :commentable

 	has_many :favorites
	has_many :favorite_users, :through => :favorites, :source => :user
	
	has_attached_file :photo, :styles => {
        :big => "600x600>",
        :medium => "300x300>",
        :small => "150x150>",
        :thumb => "50x50>"
      }

  def set_favorite
  	self.favorite_users.create(id: current_user.id)
  end
end
