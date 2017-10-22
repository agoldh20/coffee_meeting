class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    
  end

  def create
    contact = Contact.create(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            company: params[:company],
                            email: params[:email],
                            met: params[:met],
                            followed_up: params[:followed_up],
                            thank_you: params[:thank_you]
                            )
    flash = "Created"
    redirect_to "/contacts/#{contact.id}"
  end

  def show
    @contact = Contact.find(params[:id])
  end
end
