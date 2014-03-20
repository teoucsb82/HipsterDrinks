class DrinksController < ApplicationController
	respond_to :json
	respond_to :html, :only => [:index]

	def create
		@drink = Drink.new(drink_params)

		if @drink.save
			render :json => @drink
		else
			render :json => @drink
		end
	end

	def index
		@drinks = Drink.all
		respond_to do |format|
			format.html { render :index }
			format.json { render :json => @drinks }
		end
	end

	private
	def drink_params
		params.require(:drink).permit(:name, :user_id, :description)
	end
end
