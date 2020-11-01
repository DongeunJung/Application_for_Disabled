class CommentsController < ApplicationController
	def create
		type = params[:ctype]
		member_id = session[:user_id]
		if type == "restr"
			RestrComment.create(restr_id:params[:restaurant_id], 
								member_id:member_id, 
								member_name:params[:writer], 
								comment:params[:comment])
			redirect_to restaurant_path(params[:restaurant_id])
		else
			AccomComment.create(accom_id:params[:accomodation_id], 
								member_id:member_id, 
								member_name:params[:writer], 
								comment:params[:comment])
			redirect_to accomodation_path(params[:accomodation_id])
		end
	end
end
