class Message < ApplicationRecord
  include CableReady::Broadcaster

  after_save do
    cable_ready["message-stream"].morph(
      selector: ".chatroom",
      html: ApplicationController.render(self)
    )
    cable_ready.broadcast
  end
end
