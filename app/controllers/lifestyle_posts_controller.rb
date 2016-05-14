class LifestylePostsController < ApplicationController
  before_action :set_lifestyle_post, only: [:show, :edit, :update, :destroy]

  # GET /lifestyle_posts
  # GET /lifestyle_posts.json
  def index
    @lifestyle_posts = LifestylePost.all
  end

  # GET /lifestyle_posts/1
  # GET /lifestyle_posts/1.json
  def show
  end

  # GET /lifestyle_posts/new
  def new
    @lifestyle_post = LifestylePost.new
  end

  # GET /lifestyle_posts/1/edit
  def edit
  end

  # POST /lifestyle_posts
  # POST /lifestyle_posts.json
  def create
    @lifestyle_post = LifestylePost.new(lifestyle_post_params)

    respond_to do |format|
      if @lifestyle_post.save
        format.html { redirect_to @lifestyle_post, notice: 'Lifestyle post was successfully created.' }
        format.json { render :show, status: :created, location: @lifestyle_post }
      else
        format.html { render :new }
        format.json { render json: @lifestyle_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifestyle_posts/1
  # PATCH/PUT /lifestyle_posts/1.json
  def update
    respond_to do |format|
      if @lifestyle_post.update(lifestyle_post_params)
        format.html { redirect_to @lifestyle_post, notice: 'Lifestyle post was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifestyle_post }
      else
        format.html { render :edit }
        format.json { render json: @lifestyle_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifestyle_posts/1
  # DELETE /lifestyle_posts/1.json
  def destroy
    @lifestyle_post.destroy
    respond_to do |format|
      format.html { redirect_to lifestyle_posts_url, notice: 'Lifestyle post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifestyle_post
      @lifestyle_post = LifestylePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifestyle_post_params
      params.require(:lifestyle_post).permit(:title, :body, :slideshow, :lifestyle_tag)
    end
end
