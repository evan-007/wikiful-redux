class Article < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true
	validates :body, presence: true
	belongs_to :user	
	has_many :categories, through: :article_categories 
end
