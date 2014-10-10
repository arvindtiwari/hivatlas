
require 'rufus/scheduler'
module MyModule


s = Rufus::Scheduler.singleton
s.every '10s' do
News.init
end
end
    
	#def set_init
    #scheduler = Rufus::Scheduler.new
    #scheduler.every("30s") do
     #puts "hello"
    #end
 #end
#end



# Let's use the rufus-scheduler singleton
#
