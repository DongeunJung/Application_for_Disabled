class RestrDetail < ApplicationRecord
	belongs_to :restr
	
	validates:restr_id, presence:true, uniqueness:true
end
