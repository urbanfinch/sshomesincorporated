class HomeController < ApplicationController
  
  def index
    @album = Album.first
    
    respond_to do |format|
      format.html
    end
  end
end