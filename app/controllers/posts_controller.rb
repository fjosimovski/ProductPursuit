class PostsController < ApplicationController
before_action :signed_in_user, only: [:create, :destroy]

  def index
    
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash[:success] = "Post was created"
      redirect_to root_url
    else
      render root_url
    end
  end

  private 
  def post_params
    params.require(:post).permit(:description, :url, :name, :user_id)
  end

end