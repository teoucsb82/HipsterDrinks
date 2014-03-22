class DrinksController < ApplicationController
  before_filter :authenticate_user, :except => [:index, :show]
  before_filter :authenticate_author, :only => [:edit, :update, :destroy]
  before_action :set_drink, only: [:show, :edit, :update, :destroy]
  

  # GET /drinks
  # GET /drinks.json
  def index
    @drinks = Drink.search(params[:search])
    respond_to do |format|
      format.html { render :index }
      format.json { render :json => @drinks }
    end
  end

  # GET /drinks/1
  # GET /drinks/1.json
  def show
  end

  # GET /drinks/new
  def new
    @drink = Drink.new
    render :new
  end

  # GET /drinks/1/edit
  def edit
  end

  # POST /drinks
  # POST /drinks.json
  def create
    @drink = Drink.new(drink_params)
    @drink.user_id = current_user.id

    respond_to do |format|
      if @drink.save
        flash[:success] = 'Drink was successfully created.' 
        format.html { redirect_to @drink}
        format.json { render action: 'show', status: :created, location: @drink }
      else
        format.html { render action: 'new' }
        format.json { render json: @drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drinks/1
  # PATCH/PUT /drinks/1.json
  def update
    respond_to do |format|
      if @drink.update(drink_params)
        flash[:success] = 'Drink was successfully updated.' 
        format.html { redirect_to @drink }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drinks/1
  # DELETE /drinks/1.json
  def destroy
    @drink.destroy
    respond_to do |format|
      format.html { redirect_to drinks_url }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drink
      @drink = Drink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drink_params
      params.require(:drink).permit(:user_id, :name, :description, :filepicker_url)
    end

    def authenticate_author
      set_drink
      unless logged_in? && current_user == @drink.user
        flash[:danger] = ["You cannot modify someone else's drink"]
        redirect_to drinks_url
      end
    end
end
