class RestaurantsController < ApplicationController
	def index
		@restrs = (Restr.order(:gu).order(:name)).paginate(page: params[:page], per_page: 40)
	end	
	
	def filter
		@gu = params[:gu]
		@accessible = params[:accessible]
		@parking = params[:parking]
		@isflat = params[:isflat]
		@elevator = params[:elevator]
		@restrs;
		if !@gu.nil? && !@gu.empty?
			@restrs = Restr.where(gu:@gu)
		else
			@restrs = Restr.all
		end
		
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
		if restr.nil?
			redirect_to restaurants_path
		else
			History.create(member_id:session[:user_id], seq:restr.seq, realid:restr.id)
		end
	end
end
