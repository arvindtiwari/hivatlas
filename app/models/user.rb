class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :jobs
  has_many :events
  has_many :resumes
  has_many :messages
  has_many :ads
  has_many :blogs
  has_many :contacts
  has_many :news
  belongs_to :comment


  
      devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable


  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)

    Rails.logger.info("++++++#{auth['info']['nickname']}++++++++")
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      #registered_user = User.where(:email => auth.nickname + "@twitter.com").first
      #if registered_user
        #return registered_user
      #else

        user = User.create( #nickname:auth.extra.raw_info.nickname,

                            provider:auth.provider,
                            email:auth['info']['nickname']+"@twitter.com",
                            uid:auth.uid,
                            password:Devise.friendly_token[0,20],
                          )
      end

    end
  


end
