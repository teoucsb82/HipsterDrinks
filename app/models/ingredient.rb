class Ingredient < ActiveRecord::Base
	validates :name, :presence => true
	
	has_many :drink_ingredients
	
end
