class MapController < ApplicationController
	def index
		@address = params[:address]
	end
end
