class DrinkIngredient < ActiveRecord::Base
	validates :measurement_amount, presence: true
	validates :measurement_unit, presence: true
	belongs_to :drink
	belongs_to :ingredient
end
