class RestaurantsController < ApplicationController
	def index
		xml = RestClient.get 'http://openapi.seoul.go.kr:8088/51565a7a656373633636764e475464/xml/touristFoodInfo/1/414/'
		hash = (Hash.from_xml(xml).to_a)[0]
		hash4 = hash[1].to_a
		@hash5 = hash4[2][1]
	end
	
	def create
		Restr.create(restrid:params[:id], name:params[:name], address:params[:address])
		
		restr = Restr.find_by(restrid:params[:id])
		
		if !restr.nil?
			RestrDetail.create(restr_id:restr.id, 
							   fulladd:params[:fulladd], 
							   accessible:params[:accessible], 
							   parking:params[:parking], 
							   isflat:params[:isflat], 
							   elevator:params[:elevator])
		end
	end
end
