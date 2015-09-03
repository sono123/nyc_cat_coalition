class ContactsController < ApplicationController
  def show
  	@contact = Contact.first
  end

  def edit
  	@contact = Contact.first
  end

  def update
  	@contact = Contact.find(params[:id])

    respond_to do |format|
      if @contact.update_attributes(contact_params)
        format.html { redirect_to @contact, notice: 'About was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contact }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_params
  	params.require(:contact).permit(:header, :body, :phone)
  end
end
