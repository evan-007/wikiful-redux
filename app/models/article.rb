class Article < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true
	validates :content, presence: true
	#validates :categories, presence: true
	belongs_to :user	
	has_many :article_categories
	has_many :categories, through: :article_categories 
end
