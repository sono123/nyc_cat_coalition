class MainController < ApplicationController
  before_action :require_user, only: [:admin]

  def index
  	@cats = Cat.all.limit(3)
  	@events = Event.all.limit(3)
  	@upcoming = Event.upcoming.sort_by(&:date)[0..2]
  end

  def admin
  	@about = About.first
  	@contact = Contact.first
  end

end

