class SessionsController < ApplicationController
	def create
		member = Member.find_by(email:params[:email].downcase)
		if member.nil?
			flash[:notice] = '이메일이 존재하지 않습니다'
			redirect_to new_session_path
		else
			if member.authenticate(params[:password])
				session[:user_id]=member.id
				redirect_to :root
			else
				flash[:notice] = '비밀번호를 바르게 입력해주세요'
				redirect_to new_session_path
			end
		end
	end
	
	def destroy
		session.delete(:user_id)
		redirect_to :root
	end
end
