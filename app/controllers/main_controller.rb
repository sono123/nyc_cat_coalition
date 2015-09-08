class MainController < ApplicationController
  def index
  	@cats = Cat.all.limit(3)
  	@events = Event.all.limit(3)
  end

  def admin #admin login page
  end

  def about
  end

  def contact
  end
end
