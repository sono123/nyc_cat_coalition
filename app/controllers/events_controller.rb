class EventsController < ApplicationController
  def index
  	@events = Event.all
    @upcoming = Event.upcoming.sort_by &:date
    @past = Event.past.reverse
  end

  def new
  	@event = Event.new
  end

  def show
  	@event = Event.find(params[:id])
  end

  def create
  	@event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully added.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
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

  def destroy
  	@event = Event.find(params[:id])

  	@event.destroy
    respond_to do |format|
      format.html { redirect_to events_path }
      format.json { head :no_content }
    end
  end

  private

  def event_params
  	params.require(:event).permit(:title, :description, :date, :location)
  end
end




