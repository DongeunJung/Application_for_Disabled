class RestaurantsController < ApplicationController
	def index
		@restrs = Restr.paginate(page: params[:page], per_page: 40)
	end	
end
