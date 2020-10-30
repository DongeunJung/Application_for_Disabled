class HistorysController < ApplicationController
	def index
		member = Member.find(session[:user_id])
		@histories = member.histories
	end
end
