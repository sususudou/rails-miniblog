class BlogsController < ApplicationController
  def index
    @posts = Blog.all.order("id DESC")
  end
  def new
    status = Blog.new(body:params[:body])
    @status = status.save
    redirect_to :root
  end

  def like
    blog = Blog.find(params[:id])
    blog.like = blog.like+1
    blog.save
    redirect_to :root
  end
end
