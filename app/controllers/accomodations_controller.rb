class AccomodationsController < ApplicationController
	def index
		@accoms = Accom.paginate(page: params[:page], per_page: 40)
	end
end
