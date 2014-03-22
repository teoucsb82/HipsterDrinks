class Favorite < ActiveRecord::Base
	belongs_to :favoritor, class_name: "User"
	belongs_to :favorited, class_name: "Drink"
	validates :favoritor_id, presence: true
	validates :favorited_id, presence: true
end
