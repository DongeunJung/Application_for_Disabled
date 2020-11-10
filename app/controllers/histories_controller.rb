class HistoriesController < ApplicationController
	def index
		member = Member.find(session[:user_id])
		@his = member.histories.reverse
	end
	
	def destroy
		if params[:id] == 'destroy_all'
			member = Member.find(session[:user_id])
			member.histories.destroy_all
		else
			History.find(params[:id]).destroy
		end
		redirect_to histories_path
	end
end
