class SessionsController < ApplicationController
	def create
		member = Member.find_by(email:params[:email].downcase)
		if member.nil?
			flash[:notice] = 'Input right e-mail to sign in'
			redirect_to new_session_path
		else
			if member.authenticate(params[:password])
				session[:user_id]=member.id
				redirect_to :root
			else
				flash[:notice] = 'Wrong Password!'
				redirect_to new_session_path
			end
		end
	end
	
	def destroy
		session.delete(:user_id)
		redirect_to :root
	end
end
