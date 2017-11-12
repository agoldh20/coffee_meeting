class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.sort_by(&:created_at)
  end

  def new
    
  end

  def create
    contact = Contact.create(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            company: params[:company],
                            position: params[:position],
                            email: params[:email],
                            met: params[:met],
                            followed_up: params[:followed_up],
                            thank_you: params[:thank_you],
                            notes: params[:notes]
                            )
    flash = "Created"
    redirect_to "/contacts/#{contact.id}"
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])

              contact.update(
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              company: params[:company],
                              position: params[:position],
                              email: params[:email],
                              met: params[:met],
                              followed_up: params[:followed_up],
                              thank_you: params[:thank_you],
                              notes: params[:notes]
                              )

    redirect_to "/contacts/#{contact.id}"
  end

  def destroy
    @contact = Contact.find(params[:id]).destroy
    redirect_to '/'
  end
end
