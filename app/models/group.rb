class Group < ActiveRecord::Base
	has_many :comment, as: :commentable, dependent: :destroy
end
