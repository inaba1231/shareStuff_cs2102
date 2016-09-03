class User < ActiveRecord::Base
	before_save { self.username = username.downcase}
	validates :username, presence: true, length: { maximum: 50}
	validates_uniqueness_of :username, :case_sensitive => false
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email , presence: true, length: { maximum: 255}, format:
	 { with: VALID_EMAIL_REGEX }
	validates :password, presence: true, length: { minimum: 6}

end