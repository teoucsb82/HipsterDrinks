class FavoritesController < ApplicationController
  # before_action :signed_in_user

  def create  
    @drink = Drink.find(params[:favorite][:favorited_id])
    current_user.favorite!(@drink)
    respond_to do |format|
      flash[:success] = "#{@drink.name} added to favorites!"
      format.html { redirect_to @drink }
      format.js
    end
  end

  def destroy
    @drink = Favorite.find(params[:id]).favorited
    current_user.unfavorite!(@drink)
    respond_to do |format|
      flash[:warning] = "#{@drink.name} removed from favorites!"
      format.html { redirect_to @drink }
      format.js
    end
  end
end
