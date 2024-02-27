class PostsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create] 

  def new
    @post = Post.new
  end

  def create
    @post = Post.new

    if @post.save
      render :index
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
  end

end
