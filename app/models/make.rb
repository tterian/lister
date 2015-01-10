class Make < ActiveRecord::Base
	belongs_to :model
	has_many :models
	
end
