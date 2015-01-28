class Model < ActiveRecord::Base
	belongs_to :make, foreign_key: "make_id"
end
