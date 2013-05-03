class ContactController < ApplicationController
  
  def index
    @contact = Contact.new
    @map = Map.where(:identifier => 'contact').first
    
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @contact = Contact.new(params[:contact])
    
    if @contact.save
      # Send mail
      redirect_to contact_path, :notice => 'Thank You! Your message has been sent.'
    else
      render :action => :index
    end
  end
end