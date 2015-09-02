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
    @faq = Faq.find(params[:id])

    respond_to do |format|
      if @faq.update_attributes(faq_params)
        format.html { redirect_to @faq, notice: 'Faq was successfully created.' }
        format.json { render action: 'show', status: :created, location: @faq }
      else
        format.html { render action: 'new' }
        format.json { render json: @faq.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @faq = Faq.find(params[:id])

    if @faq.destroy
      flash[:success] = "Question was deleted."
    else
      flash[:error] = "This question could not be deleted."
    end
    redirect_to faqs_path
  end

  private

  def faq_params
    params.require(:faq).permit(:question, :answer)
  end
end
