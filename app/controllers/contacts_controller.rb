class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end

  def new
    @contact = current_user.contacts.build
  end
  
  def create
    @contact = current_user.contacts.build(contact_params)
    
    if @contact.save
      redirect_to 'contacts#index'
    else
      render 'new'
    end
  end

  private
  
    def contact_params
      params.require(:contact).permit(:f_name, :l_name, :email, :home_phone, :mobile_phone, :work_phone, :street, :city, :state, :zip)
    end
end

