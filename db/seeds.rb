xml = RestClient.get 'http://openapi.seoul.go.kr:8088/51565a7a656373633636764e475464/xml/touristFoodInfo/1/414/'

hash = (Hash.from_xml(xml).to_a)[0]
hash4 = hash[1].to_a
@hash5 = hash4[2][1]

@hash5.each_with_index do |h,index|
	output = h.to_a
	Restr.create(id:index+1, 
				 seq:output[0][1], 
				 name:output[1][1], 
				 gu:output[2][1])
	RestrDetail.create(restr_id:index+1, 
					   address:output[3][1], 
					   telephone:output[4][1],
					   homepage:output[5][1],
					   accessible:output[7][1], 
					   parking:output[8][1], 
					   isflat:output[9][1], 
					   elevator:output[10][1])
end

#accomodations_database
xml = RestClient.get 'http://openapi.seoul.go.kr:8088/497265634e637363383553746f536b/xml/stayLodgeInfo/1/395'
@hash1 = Hash.from_xml(xml)
@hash2 = (@hash1.to_a)[0]
@hash3 = @hash2[1]
@hash4 = (@hash3.to_a)[2]
@hash5 = @hash4[1]

@hash5.each_with_index do |h,index|
	accom = h.to_a
	Accom.create(id:index+1, 
				 seq:accom[0][1], 
				 name:accom[1][1], 
				 gu:accom[2][1])
	AccomDetail.create(accom_id:index+1, 
					   address:accom[3][1], 
					   telephone:accom[4][1], 
					   homepage:accom[5][1], 
					   accessible:accom[7][1], 
					   parking:accom[8][1], 
					   isflat:accom[9][1], 
					   elevator:accom[10][1])
end