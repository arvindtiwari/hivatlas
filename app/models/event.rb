class Event < ActiveRecord::Base
    belongs_to :user
    validates :name, :start_at, :end_at, presence: true
end
