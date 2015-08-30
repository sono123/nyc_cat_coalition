class EventsController < ApplicationController
  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new
  end

  def show
  	@event = Event.find(params[:id])
  end

  def create
  	@event = Event.new(event_params)

  	if @event.save
      respond_to do |format|
        format.html { redirect_to @event, notice: 'Event was successfully added.' }
        format.json { render action: 'show', status: :created, location: @cat }
      end
    else
      format.html { render action: 'new' }
      format.json { render json: @event.errors, status: :unprocessable_entity }
    end
  end

  def edit
  	@event = Event.find(params[:id])
  end

  def update
  	@event = Event.find(params[:id])

  	respond_to do |format|
      if @event.update_attributes(event_params)
        format.html { redirect_to @event, notice: 'Cat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def event_params
  	params.require(:event).permit(:title, :description, :date, :location)
  end
end
