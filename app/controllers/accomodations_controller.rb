class AccomodationsController < ApplicationController
	def index
		@accoms = Accom.paginate(page: params[:page], per_page: 40)
	end
	
	def show
		accom = Accom.find(params[:id])
		History.create(member_id:session[:user_id], seq:accom.seq, realid:accom.id)
	end
end
