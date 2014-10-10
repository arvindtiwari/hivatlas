class Resume < ActiveRecord::Base
	belongs_to :user

	validates :title, :profession, :location, presence: true
    mount_uploader :picture, PictureUploader
end
