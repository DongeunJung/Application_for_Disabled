class RestaurantsController < ApplicationController
	def index
		xml = RestClient.get 'http://openapi.seoul.go.kr:8088/51565a7a656373633636764e475464/xml/touristFoodInfo/1/100/'
		hash = (Hash.from_xml(xml).to_a)[0]
		hash4 = hash[1].to_a
		@hash5 = hash4[2][1]
	end
end
