class Post < ActiveRecord::Base
	has_many :comment, as: :commentable, dependent: :destroy
	belongs_to :users

end
