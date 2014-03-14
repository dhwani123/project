class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
 
  @posts = Post.find(:all, :order => 'posts.created_at DESC')

  def create
    @post = Post.new(post_params)

    @post.postedby = current_cubestudent.email
    @post.postedbyid = current_cubestudent.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  def new
    @post = Post.new
  end

  def index

    @posts = Post.order("title").page(params[:page]).per(5)
    @posts = Post.search(params[:search])
   end

  def show
    @post = Post.find(params[:id])
    if params[:tag]
    @posts = Post.tagged_with(params[:tag])
    end   
  end

  
  #GET /posts/1/edit
  def edit
   @post = Post.find(params[:id]) 
  end

  def vote
    if params[:type] == "up"
      value = 1
    else
      value = -1
    end
    
    @post = Post.find(params[:id])
    @post.add_or_update_evaluation(:votes, value, current_cubestudent)
    redirect_to :back, notice: "Thank you for voting!"
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body)
   end

end
