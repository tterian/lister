class Model < ActiveRecord::Base
	belongs_to :car
#	has_many :makes

	def aaa
		Model.where(make_id: "1")
	end
end
