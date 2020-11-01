class Accom < ApplicationRecord
	has_one :accom_detail
	has_many :accom_comments
	
	validates:seq, presence:true, uniqueness:true
	validates:name, presence:true
	validates:gu, presence:true, length:{maximum:10}
end
