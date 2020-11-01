class History < ApplicationRecord
	belongs_to :member
	
	validates:member_id, presence:true
	validates:seq, presence:true, uniqueness:true
end
