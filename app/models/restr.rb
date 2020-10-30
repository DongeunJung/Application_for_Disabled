class Restr < ApplicationRecord
	has_one :restr_detail
	has_many :histories
	
	validates:restrid, presence:true, uniqueness:true
	validates:name, presence:true
	validates:address, presence:true, length:{maximum:10}
end
