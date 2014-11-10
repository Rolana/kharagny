class Notifications < ActiveRecord::Base
	belongs_to :users
  	belongs_to :events, polymorphic: true
  	belongs_to :comment 
  	belongs_to :posts 
end
