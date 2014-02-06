class CommentsController < ApplicationController

def create
	@post = Post.find(params[:post_id])
	@comment = @post.comments.create(params[:comment].permit(:commenter, :body))
	@comment.postedby = current_cubestudent.email
	respond_to do |format|
  if @comment.save
    format.html { redirect_to @post, notice: 'Comment was successfully created.' }
    format.json { render json: @comment, status: :created, location: @comment }
  else
    format.html { redirect_to @post, alert: 'Blank comment not allowed' }
    format.json { render json: @comment.errors, status: :unprocessable_entity }
  end
	
end
end
end



