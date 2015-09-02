class FaqsController < ApplicationController
  def index
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.new(faq_params)

    if @faq.save
      respond_to do |format|
        format.html { redirect_to @faq, notice: 'Event was successfully added.' }
        format.json { render action: 'show', status: :created, location: @faq }
      end
    else
      format.html { render action: 'new' }
      format.json { render json: @faq.errors, status: :unprocessable_entity }
    end
  end

  def show
    @faq = Faq.find(params[:id])
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def faq_params
    params.require(:faq).permit(:question, :answer)
  end
end
