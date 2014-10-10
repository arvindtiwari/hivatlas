class Blog < ActiveRecord::Base

  has_many :comments

 

  private
  
  def self.add_entries(entries, user)

  	Rails.logger.info("++++++#{entries.first.link}++++++++")
    entries.each do |entry|
     # unless exists? :guid => entry.guid
        create!(
         
          :link  => entry.link.html_safe,
          :title => entry.title.html_safe,
          
          
        )
      end
    end  
  end

