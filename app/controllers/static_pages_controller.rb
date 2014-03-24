class StaticPagesController < ApplicationController
	def home
		# TestMailer.test.deliver
		@top_drinks = Drink.all.sort_by(&:average).reverse[0, 12]
		render :home
	end
end
