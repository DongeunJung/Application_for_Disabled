class AccomBookmark < ApplicationRecord	
	belongs_to :member
	
	validates:seq, presence:true, uniqueness:true
	validates:realid, presence:true, uniqueness:true
end
