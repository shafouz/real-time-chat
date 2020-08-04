class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params).save
  end

  private
    def message_params
      params.require(:message).permit(:text)
    end
end
