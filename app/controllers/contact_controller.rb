class ContactController < ApplicationController
  
  def index
    @contact = Contact.new
    @employees = Employee.all
    @map = Map.where(:identifier => 'contact').first
    @top_blurb = Blurb.where(:identifier => 'contact_top').first
    
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @contact = Contact.new(params[:contact])
    
    if @contact.save
      ContactMailer.contact(@contact).deliver
      
      redirect_to contact_path, :notice => 'Thank You! Your message has been sent.'
    else
      render :action => :index
    end
  end
end