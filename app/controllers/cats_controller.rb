class CatsController < ApplicationController
  def index
  end

  def new
  	@cat = Cat.new
  end

  def show
  	@cat = Cat.find(params[:id])
  	picture = Picture.where(params[:cat_id], @cat.id)
  	@picture = picture.last

  	50.times { print "*"}
  	puts @picture
  	50.times { print "*"}
  end

  def edit
  end

  def create
  	@cat = Cat.new(cat_params)

    respond_to do |format|
      if @cat.save
        format.html { redirect_to @cat, notice: 'Cat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cat }
      else
        format.html { render action: 'new' }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def cat_params
  	params.require(:cat).permit(:description, :name)
  end

end
