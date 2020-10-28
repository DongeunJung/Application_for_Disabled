class Member < ApplicationRecord
	#has_one :detail
	#has_many :posts
	#has_many :comments
	
	has_secure_password
	before_save {self.email = email.downcase}
	VALID_EMAIL_REGEX=/\A[^@\s]+@[^@\s]+\z/
	
	validates:firstname, presence:true, length:{maximum:50}
	validates:lastname, presence:true, length:{maximum:50}
	validates:email, presence:true, length:{maximum:255},
					 format:{with:VALID_EMAIL_REGEX},
					 uniqueness:{case_sensitive:false}
	validates:password_digest, presence:true
end
