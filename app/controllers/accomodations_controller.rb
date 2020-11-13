class AccomodationsController < ApplicationController
	def index
		@accoms = (Accom.order(:gu).order(:name)).paginate(page: params[:page], per_page: 40)
	end
	
	def filter
		if params[:forme]
			if session[:user_id].nil?
				flash[:notice] = '추천을 받으려면 로그인을 해주세요'
				redirect_to accomodations_path
				return false
			else
				member = Member.find(session[:user_id])
				detail = member.member_detail
				@accessible = "N"
				@parking = "N"
				@isflat = "N"
				@elevator = "N"
				if detail.wheelchair
					@isflat = "Y"
					@elevator = "Y"
				end
				if detail.vehicle
					@parking = "Y"
				end
				@accoms = Accom.all
				return false
			end
		end
	
		@gu = params[:gu]
		@accessible = params[:accessible]
		@parking = params[:parking]
		@isflat = params[:isflat]
		@elevator = params[:elevator]
		@accoms;
		
		if !@gu.nil? && !@gu.empty?
			@accoms = Accom.where(gu:@gu)
		else
			if @accessible!="on" && @parking!="on" && @isflat!="on" && @elevator!="on"
				flash[:notice] = '원하는 조건을 선택해주세요'
				redirect_to accomodations_path
			else
				@accoms = Accom.all
			end
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
