class RestrComment < ApplicationRecord
	belongs_to :member
	belongs_to :restr
	
	validates:restr_id, presence:true
	validates:member_id, presence:true
	validates:member_name, presence:true
	validates:comment, presence:true
end
