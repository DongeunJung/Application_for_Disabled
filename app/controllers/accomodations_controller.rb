class AccomodationsController < ApplicationController
	def index
		@accoms = (Accom.order(:gu).order(:name)).paginate(page: params[:page], per_page: 40)
	end
	
	def filter
		@gu = params[:gu]
		@accessible = params[:accessible]
		@parking = params[:parking]
		@isflat = params[:isflat]
		@elevator = params[:elevator]
		@accoms;
		if !@gu.nil? && !@gu.empty?
			@accoms = Accom.where(gu:@gu)
		else
			@accoms = Accom.all
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
		accom = Accom.find_by(id:params[:id])
		if accom.nil?
			redirect_to accomodations_path
		else
			History.create(member_id:session[:user_id], seq:accom.seq, realid:accom.id)
		end
	end
end
