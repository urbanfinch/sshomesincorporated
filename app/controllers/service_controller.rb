class ServiceController < ApplicationController
  
  def index
    @service_list = List.where(:identifier => 'service_top').first
    @service_blurb = Blurb.where(:identifier => 'service_bottom').first
    @service_top_right_album = Album.where(:identifier => 'service_top_right').first
    @service_bottom_right_album = Album.where(:identifier => 'service_bottom_right').first
    
    respond_to do |format|
      format.html
    end
  end
end