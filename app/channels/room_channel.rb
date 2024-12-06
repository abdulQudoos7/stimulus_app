class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel" # You can set up a stream here. Example:
    stream_from "room_#{params[:room_id]}"
    # stream_from("room_#{current_user.id}")
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
