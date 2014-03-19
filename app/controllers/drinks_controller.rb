class DrinksController < ApplicationController
	before_filter :authenticate_user, :except => [:index, :show]
	before_filter :authenticate_author, :only => [:edit, :update, :destroy]

	def create
		@drink = Drink.new(drink_params)
		@drink.user_id = current_user.id
		if @drink.save
			redirect_to drink_url(@drink)
		else
			flash.now[:errors] = @drink.errors.full_messages
			render :new
		end
	end

	def destroy
		get_drink
		@drink.destroy
		redirect_to drinks_url
	end

	def edit
		get_drink
		render :edit
	end

	def index
		@drinks = Drink.all
		render :index
	end

	def new
		@drink = Drink.new
		render :new
	end

	def show
		get_drink
		render :show
	end

	def update
		get_drink

		if @drink.update_attributes!(drink_params)
    	redirect_to drink_url(@drink)
    else
			flash.now[:errors] = @drink.errors.full_messages
			render :edit
		end
	end

	private
	def drink_params
		params.require(:drink).permit(:name, :description)
	end

	def get_drink
		@drink = Drink.find(params[:id])
	end

	def authenticate_user
		unless logged_in?
			flash[:errors] = ["You need to be logged in to create a drink"]
			redirect_to root_url
		end
	end

	def authenticate_author
		get_drink
		unless logged_in? && current_user == @drink.user
			flash[:errors] = ["You cannot modify someone else's drink"]
			redirect_to drinks_url
		end
	end

end
