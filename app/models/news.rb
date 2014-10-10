class News < ActiveRecord::Base
validates :hiv_atlas_daily_digest, presence:true
belongs_to :user

	def self.init
	        n="I feel like drinking coffee "
          if News.all
      			 puts "#{n}" 
    	else
    		 puts "no updates"
   		 end   
  	end
end