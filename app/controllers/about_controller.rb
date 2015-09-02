class AboutController < ApplicationController
  def show
  	@about = About.first
  end

  def edit
  	@about = About.first
  end

  def update
  end
end
