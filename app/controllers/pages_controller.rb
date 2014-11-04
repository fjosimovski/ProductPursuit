class PagesController < ApplicationController

  def home
    @posts = Post.find(:all, :joins => :user).reverse.group_by { |post| post.created_at.strftime("%A %B %d %Y")}
  end

  def about
    
  end

  def welcome
    
  end
end