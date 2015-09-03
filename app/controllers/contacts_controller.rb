class ContactsController < ApplicationController
  def show
  	@contact = Contact.first
  end

  def edit
  end

  def update
  end
end
