class PagesController < ApplicationController

  def home
    @posts = Post.find(:all).reverse.group_by { |post| post.created_at.strftime("%A %B %d %Y")}
  end

  def about
    
  end

  def welcome
    
  end
end