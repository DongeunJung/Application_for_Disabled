class HistoriesController < ApplicationController
	def index
		member = Member.find(session[:user_id])
		@his = member.histories.reverse
	end
	
	def destroy
		History.find(params[:id]).destroy
		redirect_to histories_path
	end
end
