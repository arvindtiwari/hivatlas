class ResumesController < ApplicationController


  def new
  @resume=Resume.new
  end

  def show
  @resume=Resume.find(params[:id])
  end

 def index
 @resumes=Resume.all
 end

 
def create
	#@user = User.find(params[:user_id])
    @resume=Resume.new(resume_params)
 
  if @resume.save
     redirect_to user_resume_path(current_user,@resume)
        
  else 
    render 'new'
  end
end

private
  def resume_params
    params.require(:resume).permit!#(:name, :content, :user_id)
  end
end
