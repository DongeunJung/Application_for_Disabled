class MembersController < ApplicationController
	def create
		Member.create(firstname:params[:firstname],
					  lastname:params[:lastname],
					  email:params[:email].downcase,
					  password:params[:password],
					  password_confirmation:params[:confirm])
		member=Member.find_by(email:params[:email].downcase)
		if member.nil?
			flash[:notice]='필수항목을 바르게 입력해주세요'
			redirect_to new_member_path
		else
			wheelchair = params[:wheelchair]
			vehicle = params[:vehicle]
			if wheelchair == "on"
				wheelchair = true
			else
				wheelchair = false
			end
			if vehicle == "on"
				vehicle = true
			else
				vehicle = false
			end
			MemberDetail.create(member_id:member.id, 
								wheelchair:wheelchair, 
								vehicle:vehicle, 
								gender:params[:gender], 
								address:params[:address])
			redirect_to member_path(member.id)
		end
	end
	
	def update
		member = Member.find(params[:id])
		detail = member.member_detail
		
		detail.wheelchair = params[:wheelchair]
		detail.vehicle = params[:vehicle]
		detail.gender = params[:gender]
		detail.address = params[:address]
		
		detail.save
		
		redirect_to member_path
	end
end
