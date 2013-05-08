class AboutController < ApplicationController
  
  def index
    @left_blurb_top = Blurb.where(:identifier => 'about_left_top').first
    @left_blurb_bottom = Blurb.where(:identifier => 'about_left_bottom').first
    
    respond_to do |format|
      format.html
    end
  end
end