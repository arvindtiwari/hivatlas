class ContactsController < ApplicationController


  def new
  @contact =Contact.new
  end

  def show
  @contact=Contact.find(params[:id])
  end

  def index
  @contacts=Contact.all
  end

    def create
    @contact =Contact.new(contact_params)
     if @contact.save
     redirect_to user_contact_path(current_user, @contact)
     else 
      render 'new'
     end
  end

private
  def contact_params
    params.require(:contact).permit!#(:name, :content, :user_id)
  end
end

