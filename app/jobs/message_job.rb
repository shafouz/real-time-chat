class MessageJob < ApplicationJob
  include CableReady::Broadcaster
  queue_as :default

  # add a date formatter helper method

  def perform(*args)
  end
end
