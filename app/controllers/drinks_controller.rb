class DrinksController < ApplicationController
	before_filter :authenticate_user, :except => [:index, :show]
	before_filter :authenticate_author, :only => [:edit, :update, :destroy]

	respond_to :json
	respond_to :html, :only => [:index]

	def create
		@drink = Drink.new(drink_params)
		@drink.user_id = current_user.id

		if @drink.save
			flash[:success] = "Drink was created"
			respond_to do |format|
				format.html { redirect_to @drink }
				format.json { render :json => @drink }
			end
		else
			flash.now[:danger] = @drink.errors.full_messages
			respond_to do |format|
				format.html { render :new }
				format.json { render :json => @drink.errors.full_messages, :status => 422 }
			end
		end
	end

	def destroy
		get_drink
		if @drink.destroy
			flash[:success] = "Drink was deleted"
			redirect_to drinks_url
		else
			flash[:danger] = "Something went wrong"
			redirect_to drinks_url
		end
	end

	def index
		@drinks = Drink.all
		respond_to do |format|
			format.html { render :index }
			format.json { render :json => @drinks }
		end
	end

	def show
		get_drink
		respond_to do |format|
			format.html { render :show }
			format.json { render :json => @drink }
		end
	end

  def update
    @drink = Drink.find(params[:id])
    
    if params[:favorite]
    	@drink.favorite_users.new(id: current_user)
   	end


    if @drink.update_attributes(drink_params)
      render :json => @drink
    else
      render :json => @drink.errors.full_messages, :status => 422
    end
  end

	private
	def drink_params
		params.require(:drink).permit(:name, :user_id, :description, :photo, :favorite)
	end

	def get_drink
		@drink = Drink.find(params[:id])
	end

	def authenticate_author
		get_drink
		unless logged_in? && current_user == @drink.user
			flash[:danger] = ["You cannot modify someone else's drink"]
			redirect_to drinks_url
		end
	end
	
end
