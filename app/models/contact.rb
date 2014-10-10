class Contact < ActiveRecord::Base
	validates :name, :email, :subject, presence: true
	belongs_to :user
end
