class MessagesController < ApplicationController

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = @chatroom.messages
  end

  def create
    @chatroom = Chatroom.find(params[:id].to_i)
    @message = @chatroom.messages.create(message_params).save
  end

  private
    def message_params
      params.require(:message).permit(:text)
    end
end
