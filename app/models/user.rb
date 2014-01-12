class User < ActiveRecord::Base
	has_secure_password
	has_many :articles
	validates :email, presence: true, uniqueness: true
	validates :name, presence: true, uniqueness: true
end
