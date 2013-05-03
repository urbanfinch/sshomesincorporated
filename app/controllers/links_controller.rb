class LinksController < ApplicationController
  
  def index
    @link_nav = Nav.where(:identifier => 'links').first
    @client_nav = Nav.where(:identifier => 'clients').first
    
    respond_to do |format|
      format.html
    end
  end
end