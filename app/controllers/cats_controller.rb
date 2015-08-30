class CatsController < ApplicationController
  def index
  	@cats = Cat.all
  end

  def new
  	@cat = Cat.new
  end

  def show
  	@cat = Cat.find(params[:id])
  	if Picture.where(:cat_id => @cat.id).count > 0
  		@pictures = Picture.where(:cat_id => @cat.id)
  	end
  end

  def edit
  end

  def create
  	@cat = Cat.new(cat_params)

    respond_to do |format|
      if @cat.save
      	if params[:images]
          # The magic is here ;)
          params[:images].each { |image|
            @cat.pictures.create(image: image)
          }
        end

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
