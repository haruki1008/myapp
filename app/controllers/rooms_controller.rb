class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  def index
    @rooms = Room.all
  end



  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  def create
   @room = Room.new(room_params)

    if @room.save
      @status = true
    else
      @status = false
    end
  end

  # PATCH/PUT /rooms/1
  def update
    if @room.update(room_params)
      @status = true
    else
      @status = false
    end
  end

  # DELETE /rooms/1
  def destroy
    @room.destroy
   
  end
  
  def show
    @chat = @room.chats.new
    
  end

  private
   
    def set_room
     @room = Room.find_by(id: params[:id])

     redirect_to(rooms_url, alert: "ERROR!!") if @room.blank?
    end

    
    def room_params
      params.require(:room).permit(:title, tag_ids: [])
    end
end