class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end

  def new
    @user = User.find(params[:user_id])
    @contact = @user.contacts.new
  end
  
  def create
    @user = User.find(params[:user_id])
    @contact = @user.contacts.create(contact_params)
    
    if @contact.save
      redirect_to user_path @user
    else
      render 'new'
    end
  end

  private
  
    def contact_params
      params.require(:contact).permit(:f_name, :l_name, :email, :home_phone, :mobile_phone, :work_phone, :street, :city, :state, :zip)
    end
end

