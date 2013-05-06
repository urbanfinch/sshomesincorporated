class AboutController < ApplicationController
  
  def index
    @left_blurb = Blurb.where(:identifier => 'about_left').first
    
    respond_to do |format|
      format.html
    end
  end
end