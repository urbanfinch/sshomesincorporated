class PortfolioController < ApplicationController
  
  def index
    @albums = Album.all
    
    respond_to do |format|
      format.html
    end
  end
  
  def show
    @album = Album.find(params[:id])
    
    respond_to do |format|
      format.html
    end
  end
end