class MessagesController < ApplicationController

	def index
    @messages = Message.all
   end
    
  
  def show
    @message=Message.find(params[:id])
  end

  
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
      if @message.save
         redirect_to user_message_path(current_user,@message)
      else
        render :new  
      end
    end
 

  
  private
    
    def message_params
      params.require(:message).permit!#(:hiv_atlas_daily_digest, :latest_job_weekly, :new_classified_adds_weekly)
    end
end

