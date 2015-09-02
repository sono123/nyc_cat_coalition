class FaqsController < ApplicationController
  def index
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
