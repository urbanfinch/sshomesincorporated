class AboutController < ApplicationController
  
  def index
    @employees = Employee.all
    @right_blurb = Blurb.where(:identifier => 'about_right').first
    @sidebar_top_list = List.where(:identifier => 'about_sidebar_top').first
    @sidebar_bottom_list = List.where(:identifier => 'about_sidebar_bottom').first
    
    respond_to do |format|
      format.html
    end
  end
end