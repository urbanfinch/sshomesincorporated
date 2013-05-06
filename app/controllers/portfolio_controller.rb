class PortfolioController < ApplicationController
  
  def index
    @albums = Album.all
    @homes_for_sale_nav = Nav.where(:identifier => 'homes_for_sale').first
    
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