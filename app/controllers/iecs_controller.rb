class IecsController < ApplicationController

  def new
  @iec = Iec.new
  end

  def show
 
  @iec=Iec.find(params[:id])
  end

  def index
  @iecs=Iec.all
  end

 
  def create

    if signed_in?
   @iec =Iec.new(iec_params)

    if @iec.save 
     redirect_to  user_iec_path(current_user,@iec)
    else 
          render 'new'
    end
    else
        redirect_to user_session_path
    end
  end

 
  private
  def iec_params
    params.require(:iec).permit!#(:name, :content, :user_id)
  end
end






