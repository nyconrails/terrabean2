class BlogPostsController < ApplicationController
  
  def index
    @blog_posts = BlogPost.ready_for_display.all
  end
  
  def show
    @blog_post = BlogPost.ready_for
  end
  
end