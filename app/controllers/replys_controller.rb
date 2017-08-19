class ReplysController < ApplicationController
  def new
    status = Reply.new(comment:params[:body],blog_id:params[:blog_id])
    status.save
    redirect_to :root
  end
end
