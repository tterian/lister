class Make < ActiveRecord::Base
	belongs_to :model
	belongs_to :car
	has_many :models
	
end
