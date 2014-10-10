class NewsController < ApplicationController
  

   def index
    @news = News.all
   end
    
  
  def show
    @news=News.find(params[:id])
  end

  
  def new
    @news = News.new
  end

  def create

    if signed_in?
    @news = News.new(news_params)
      if @news.save

         NewsMailer.welcome_email(@news).deliver
         redirect_to  user_news_path(current_user,@news) 
      else
        render :new  
      end
    else
      redirect_to new_user_news_path
    end
  end
 
  private
    
    def news_params
      params.require(:news).permit!#(:hiv_atlas_daily_digest, :latest_job_weekly, :new_classified_adds_weekly)
    end
end
