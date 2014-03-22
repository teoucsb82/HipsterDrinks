# == Schema Information
#
# Table name: recipes
#
#  id            :integer          not null, primary key
#  drink_id      :integer
#  ingredient_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Recipe < ActiveRecord::Base
	validates :drink_id, :ingredient_id, :presence => true
	belongs_to :drink
	belongs_to :ingredient
end
