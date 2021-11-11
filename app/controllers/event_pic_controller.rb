class EventPicController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @event.event_pic.attach(params[:event_pic])
    redirect_to(event_path(@event))
  end

end
