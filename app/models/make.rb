class Make < ActiveRecord::Base
	belongs_to :car
	has_many :models

end
