class EventsController < ApplicationController

    def new
    @event =Event.new
    end

   def show
   @event=Event.find(params[:id])
   end

   def index
   @events=Event.all
   end

 
   def create
	 @event = Event.new(event_params)
    if @event.save
    redirect_to user_event_path(current_user, @event)
    else 
    render 'new'
    end
 end

  private
  def event_params
    params.require(:event).permit!#(:name, :content, :user_id)
  end
end


