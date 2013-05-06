class PostsController < ApplicationController
  
  def show
    @post = Post.find(params[:id])
    
    respond_to do |format|
      format.html
    end
  end
end