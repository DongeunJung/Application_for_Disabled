class HistoriesController < ApplicationController
	def index
		member = Member.find(session[:user_id])
		@his = member.histories.reverse
	end
end
