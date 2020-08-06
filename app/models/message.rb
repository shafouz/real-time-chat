class Message < ApplicationRecord
  belongs_to :chatroom
  include CableReady::Broadcaster
  include ApplicationHelper

  after_save do
    cable_ready["message-stream"].morph(
      selector: "#chatroom-#{self.chatroom_id}",
      html: MessagesController.render(partial: "message", locals: { message: Chatroom.find(self.chatroom_id).messages, chatroom: self.chatroom_id })
    )
    cable_ready.broadcast
  end
end
