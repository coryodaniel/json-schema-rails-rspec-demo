class PostsController < ApplicationController
  def index
    render json: Post.all, each_serializer: PostSerializer, root: false
  end
end
