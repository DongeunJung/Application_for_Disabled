class BookmarksController < ApplicationController
	def index
		@bookmarks = Bookmark.all
	end
	def create
		type = params[:type]
		id = params[:id]
		
		if type=="restr"
			restr = Restr.find(id)
			Bookmark.create(member_id:params[:member_id], seq:restr.seq, realid:id)
		else
			accom = Accom.find(id)
			Bookmark.create(member_id:params[:member_id], seq:accom.seq, realid:id)
		end
	end
	
	def show_all
		@bookmarks = Bookmark.all
	end
	
	def show_restrs
		@bookmarks = Bookmark.all
	end
	
	def show_accoms
		@bookmarks = Bookmark.all
	end
end
