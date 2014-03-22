class FavoritesController < ApplicationController
  # before_action :signed_in_user

  def create  
    @drink = Drink.find(params[:favorite][:favorited_id])
    current_user.favorite!(@drink)
    flash[:success] = "#{@drink.name} added to favorites!"
    respond_to do |format|
      format.html { redirect_to @drink }
      format.js
    end
  end

  def destroy
    @drink = Favorite.find(params[:id]).favorited
    current_user.unfavorite!(@drink)
    flash[:warning] = "#{@drink.name} removed from favorites!"
    respond_to do |format|
      format.html { redirect_to @drink }
      format.js
    end
  end
end
