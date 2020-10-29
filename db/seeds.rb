xml = RestClient.get 'http://openapi.seoul.go.kr:8088/51565a7a656373633636764e475464/xml/touristFoodInfo/1/414/'

hash = (Hash.from_xml(xml).to_a)[0]
hash4 = hash[1].to_a
@hash5 = hash4[2][1]

@hash5.each_with_index do |h,index|
	output = h.to_a
	
	
	Restr.create(id:index+1, restrid:output[0][1], name:output[1][1], address:output[2][1])
	RestrDetail.create(restr_id:index+1, 
					   fulladd:output[3][1], 
					   accessible:output[7][1], 
					   parking:output[8][1], 
					   isflat:output[9][1], 
					   elevator:output[10][1])
end