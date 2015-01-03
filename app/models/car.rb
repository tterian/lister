class Car < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	validates :make, 	presence: true
end
