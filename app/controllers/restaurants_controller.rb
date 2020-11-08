class RestaurantsController < ApplicationController
	def index
		@restrs = (Restr.order(:gu).order(:name)).paginate(page: params[:page], per_page: 40)
	end	
	
	def show
		restr = Restr.find(params[:id])
		History.create(member_id:session[:user_id], seq:restr.seq, realid:restr.id)
	end
end
