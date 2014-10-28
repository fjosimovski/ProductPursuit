class PostsController < ApplicationController
before_action :signed_in_user, only: [:create, :destroy]


  def index
    
  end

  def create
    # render text: "#{params[:post]}"
    @post = current_user.posts.build(post_params)
    # @post.user_id = current_user.id
    # @posts = Post.new(post_params)

    if @post.save
      flash[:success] = "Post was created"
      # render text: "#{params[:post]}"
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