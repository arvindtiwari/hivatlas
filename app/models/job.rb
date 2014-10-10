class Job < ActiveRecord::Base

	belongs_to :user
	validates :title, :email_address, :city, presence: true

end
