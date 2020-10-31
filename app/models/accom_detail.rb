class AccomDetail < ApplicationRecord
	belongs_to :accom
	
	validates:accom_id, presence:true, uniqueness:true
end
