class ContactController < ApplicationController

  def index
    @contacts =Contact.all
  end

  def new
    @contact = Contact.new
  end

  def show
    @contact =Contact.find(params[:id])
  end

  def edit
    @contact =Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to :action => :show, :id => @contact.id     
        else
    render 'new'
    end
  
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(contact_params)
      redirect_to :action => :show, :id => @contact.id     
    else
    render 'edit'
    end
  
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
   
    redirect_to :action => :index
  end

  private

  def contact_params
    params.require(:contact).permit(:name,:dateOfBirth)
  end
end

