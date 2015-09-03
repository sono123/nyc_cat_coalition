class ContactsController < ApplicationController
  def show
  	@contact = Contact.first
  end

  def edit
  	@contact = Contact.first
  end

  def update
  end
end
