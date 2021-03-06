class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index

    if params[:news_item_id]
      @news_item = NewsItem.find(id = params[:news_item_id])
      @comments = Comment.where(news_item_id: @news_item.id).entries
      @comment = @news_item.comments.build #Comment.new

    else
      @comments = Comment.all
    end

  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @news_item = NewsItem.find params[:news_item_id]
    @comment = @news_item.comments.build
    @comments = Comment.where(news_item_id: @news_item.id).entries
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @fields = {"body": "Comentario", "author": "Autor"} 

    @news_item = NewsItem.find params[:news_item_id]
    @comments = Comment.where(news_item_id: @news_item.id).entries
    @comment = @news_item.comments.build(comment_params) #Comment.new
    #@comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to new_news_item_comment_path(_index: params[:_index] , _admin: params[:_admin]),
                   notice: 'Comentario creado con éxito.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:author, :body, :news_item_id)
    end
end
