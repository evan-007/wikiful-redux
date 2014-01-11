class Article < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true
	validates :body, presence: true
	belongs_to :user	 
end
