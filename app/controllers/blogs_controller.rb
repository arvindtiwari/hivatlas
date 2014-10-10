
require 'rss'
class BlogsController < ApplicationController

 def index
 @rss = RSS::Parser.parse(open('http://news.google.com/?output=rss'.html_safe).read, false).items[0..20]
 Blog.add_entries(@rss, current_user) 
 end

 
 def show
  @blog = Blog.find(params[:id])
  @comments= @blog.comments
end

end
 
