class AboutsController < ApplicationController
  def show
  	@about = About.first
  end

  def edit
  	@about = About.first
  end

  def update
  	@about = About.find(params[:id])

    respond_to do |format|
      if @about.update_attributes(about_params)
        format.html { redirect_to @about, notice: 'About was successfully created.' }
        format.json { render action: 'show', status: :created, location: @about }
      else
        format.html { render action: 'edit' }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def about_params
  	params.require(:about).permit(:header, :body)
  end
end
