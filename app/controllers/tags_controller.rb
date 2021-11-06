class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  # GET /tags or /tags.json
  def index
    @tags = Tag.all
  end

  # GET /tags/1 or /tags/1.json
  def show
  end

  # GET /tags/new
  def new
    @tag = Tag.new
  end

  # GET /tags/1/edit
  def edit
  end

  # POST /tags or /tags.json
  def create
    @tag = Tag.new(tag_params)

    
      if @tag.save
      @status = true
      else
      @status = false
      end
  end
  

  # PATCH/PUT /tags/1 or /tags/1.json
  def update
    if @tag.update(tag_params)
     @status = true
    else
     @status = false
    end
  end

  # DELETE /tags/1 or /tags/1.json
  def destroy
    @tag.destroy
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])

    end

    # Only allow a list of trusted parameters through.
    def tag_params
      params.require(:tag).permit(:name)
    end
    
end
