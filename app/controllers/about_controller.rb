class AboutController < ApplicationController
  
  def index
    @employees = Employee.all
    @right_blurb = Blurb.where(:identifier => 'about_right').first
    
    respond_to do |format|
      format.html
    end
  end
end