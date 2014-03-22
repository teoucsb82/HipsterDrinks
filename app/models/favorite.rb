# == Schema Information
#
# Table name: favorites
#
#  id           :integer          not null, primary key
#  favoritor_id :integer
#  favorited_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Favorite < ActiveRecord::Base
	belongs_to :favoritor, class_name: "User"
	belongs_to :favorited, class_name: "Drink"
	validates :favoritor_id, presence: true
	validates :favorited_id, presence: true
end
