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
			render 'new'
		else
			redirect_to member_path(member.id)
		end
	end
end
