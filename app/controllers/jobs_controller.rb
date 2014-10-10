class JobsController < ApplicationController


   def new
   @job =Job.new
   end

   def show
   @job=Job.find(params[:id])
   end

   def index
   @jobs=Job.all
   end

 
   def create
	 @job = Job.new(job_params)
   if @job.save
     redirect_to user_job_path(current_user, @job)
    else 
    render 'new'
  end
end

 private
  def job_params
    params.require(:job).permit!#(:name, :content, :user_id)
  end
end
