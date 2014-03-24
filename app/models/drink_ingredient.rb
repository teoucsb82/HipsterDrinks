# == Schema Information
#
# Table name: drink_ingredients
#
#  id                 :integer          not null, primary key
#  drink_id           :integer
#  ingredient_id      :integer
#  measurement_amount :float
#  measurement_unit   :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class DrinkIngredient < ActiveRecord::Base
	belongs_to :drink
	belongs_to :ingredient
end
