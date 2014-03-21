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
	attr_reader :photo

	validates :name, presence: true
	validates :description, presence: true
	validates :user_id, presence: true

	belongs_to :user
 	has_many :comments, as: :commentable

 	has_many :favorites
	has_many :favorite_users, :through => :favorites, :source => :user

end
