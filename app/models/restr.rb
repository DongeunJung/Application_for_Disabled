class Restr < ApplicationRecord
	has_one :restr_detail
	has_many :restr_comments
	
	validates:seq, presence:true, uniqueness:true
	validates:name, presence:true
	validates:gu, presence:true, length:{maximum:10}
end
