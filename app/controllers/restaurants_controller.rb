class RestaurantsController < ApplicationController
	def index
		@restrs = Restr.all
	end
	
	
end
