class Article < ApplicationRecord
	# used to validate user input before creating new Article
	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 10 }
	# the actual elements of this model are defined based on the table columns in the db
end
