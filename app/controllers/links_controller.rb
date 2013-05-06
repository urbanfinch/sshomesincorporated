class LinksController < ApplicationController
  
  def index
    @client_nav = Nav.where(:identifier => 'clients').first
    
    respond_to do |format|
      format.html
    end
  end
end