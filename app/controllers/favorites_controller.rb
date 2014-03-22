class FavoritesController < ApplicationController
  # before_action :signed_in_user

  def create  
    50.times { puts "" }
    @drink = Drink.find(params[:favorite][:favorited_id])
    puts "@drink = #{@drink}"
    puts "params = #{params}"


    current_user.favorite!(@drink)
    puts "current_user = #{current_user}"


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
