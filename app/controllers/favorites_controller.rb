class FavoritesController < ApplicationController

	def create
		@location = Location.find(params[:location_id])
		@favorite = Favorite.new
		@favorite.user = current_user
		@favorite.location = @location
		@favorite.save
		authorize @favorite
	end


end
