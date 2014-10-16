class StaticPagesController < ApplicationController

  def home
    @new_class= "posts-index"
  end

  def about
    @new_class="pages-about"
  end

  def welcome
    @new_class = "user-settings-welcome"
  end
end