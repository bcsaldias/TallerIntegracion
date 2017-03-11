class NewItemsController < ApplicationController
  before_action :set_new_item, only: [:show, :edit, :update, :destroy]

  # GET /new_items
  # GET /new_items.json
  def index
    @new_items = NewItem.all
  end

  # GET /new_items/1
  # GET /new_items/1.json
  def show
  end

  # GET /new_items/new
  def new
    @new_item = NewItem.new
    @maximum_length = NewItem.validators_on( :lead ).first.options[:maximum]
  end

  # GET /new_items/1/edit
  def edit
  end

  # POST /new_items
  # POST /new_items.json
  def create
    @new_item = NewItem.new(new_item_params)

    respond_to do |format|
      if @new_item.save
        format.html { redirect_to @new_item, notice: 'Noticia creada exitosamente.' }
        format.js
        format.json { render :show, status: :created, location: @new_item }
      else
        format.html { render :new }
        format.json { render json: @new_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_items/1
  # PATCH/PUT /new_items/1.json
  def update
    respond_to do |format|
      if @new_item.update(new_item_params)
        format.html { redirect_to @new_item, notice: 'Noticia editada exitosamente.' }
        format.json { render :show, status: :ok, location: @new_item }
      else
        format.html { render :edit }
        format.json { render json: @new_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_items/1
  # DELETE /new_items/1.json
  def destroy
    @new_item.destroy
    respond_to do |format|
      format.html { redirect_to new_items_url, notice: 'Noticia eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_item
      @new_item = NewItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_item_params
      params.require(:new_item).permit(:title, :lead, :body)
    end
end
