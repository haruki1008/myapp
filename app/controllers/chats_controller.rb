class ChatsController < ApplicationController
  before_action :set_room
  before_action :set_chat, only: [:show, :edit, :update, :destroy]
  

  # GET /chats/new
  def new
   @chat = @room.chats.new
  end

  # GET /chats/1/edit
  def edit
  end
 
  # POST /chats
  def create
   @chat = @room.chats.new(chat_params)

    if @chat.save
     @status = true
    else
     @status = false
    end
  end

  # PATCH/PUT /chats/1
  def update
    if @chat.update(chat_params)
      @status = true
    else
       @status = false
    end
  end

  # DELETE /chats/1
  def destroy
    @chat.destroy
  end

  private
    def set_room
   @room = Room.find_by(id: params[:room_id])
   redirect_to(rooms_url, alert: "ERROR!!") if @room.blank?
    end
    
    def set_chat
      @chat = @room.Chat.find_by( params[:id])
    end

    def chat_params
    params.require(:chat).permit(:name, :content, :image)
    end
  
end