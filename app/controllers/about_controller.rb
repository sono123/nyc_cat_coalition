class AboutController < ApplicationController
  def show
  	@about = About.first
  end

  def edit
  end

  def update
  end
end
