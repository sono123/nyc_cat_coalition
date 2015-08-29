class PicturesController < ApplicationController
  def show
  end

  def new
  	@cat = Cat.find(params[:cat_id])
  	@picture = Picture.new
  end

  def edit
  end

  def create
  	@cat = Cat.find(params[:cat_id])
  	@picture = Picture.new(picture_params)

  	if @picture.save
      respond_to do |format|
        format.html { redirect_to @cat, notice: 'Picture was successfully added.' }
        format.json { render action: 'show', status: :created, location: @cat }
      end
    else
      format.html { render action: 'new' }
      format.json { render json: @cat.errors, status: :unprocessable_entity }
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :cat_id, :image)
  end
end
