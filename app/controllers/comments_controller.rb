class CommentsController < ApplicationController
	def new
    @comment = Comment.new(comment_params)
  end

  def create
    if !params[:comment][:user_id].empty?
      @user = User.find(params[:comment][:user_id])
      @comment = Comment.create(content: params[:comment][:content], user_id: @user.id, post_id: params[:comment][:post_id])
    elsif
      params[:comment][:user_id].empty?
      @user = User.new(username: params[:comment][:user_attributes][:username])
      @user.save
      @comment = Comment.create(content: params[:comment][:content], user_id: @user.id, post_id: params[:comment][:post_id])
    end
   	redirect_to post_path(params[:comment][:post_id]) 
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
