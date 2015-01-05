class Car < ActiveRecord::Base
	belongs_to :user
#	has_one :make

	default_scope -> { order(created_at: :desc) }
	mount_uploader :picture, PictureUploader
	
	validates 	:user_id, presence: true
	validates 	:note, length: { maximum: 140 }
	validates 	:make, presence: true
	validate 	:picture_size


	private

	#Validate the size of an uploaded picture.
	def picture_size
		if picture.size > 5.megabytes
			errors.add(:picture, "should be less than 5MB")
		end
	end
end
