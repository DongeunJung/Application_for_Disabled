class RestaurantsController < ApplicationController
	def index
		@restrs = (Restr.order(:gu).order(:name)).paginate(page: params[:page], per_page: 40)
	end	
	
	def index_filter
		@gu = params[:gu]
		@accessible = params[:accessible]
		@parking = params[:parking]
		@isflat = params[:isflat]
		@elevator = params[:elevator]
		@restrs = Restr.where(gu:@gu)
		
		if @accessible == "on"
			@accessible = "Y"
		else
			@accessible = "N"
		end
		
		if @parking == "on"
			@parking = "Y"
		else
			@parking = "N"
		end
		
		if @isflat == "on"
			@isflat = "Y"
		else
			@isflat = "N"
		end
		
		if @elevator == "on"
			@elevator = "Y"
		else
			@elevator = "N"
		end
		
		
	end
	
	def show
		restr = Restr.find_by(id:params[:id])
		if !restr.nil?
			History.create(member_id:session[:user_id], seq:restr.seq, realid:restr.id)
		end
	end
end
