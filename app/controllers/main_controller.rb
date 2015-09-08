class MainController < ApplicationController
  before_action :require_user, only: [:admin]

  def index
  	@cats = Cat.all.limit(3)
  	@events = Event.all.limit(3)
  end

  def admin
  	@about = About.first
  	@contact = Contact.first
  end

  def about
  end

  def contact
  end
end
