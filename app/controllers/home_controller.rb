class HomeController < ApplicationController
  
  def index
    @album = Album.where(:identifier => 'home').first
    @post = Post.where(:published => true, :created_at.lte => Time.now).desc(:created_at).first
    @sidebar_blurb = Blurb.where(:identifier => 'home_sidebar').first
    @top_left_blurb = Blurb.where(:identifier => 'home_top_left').first
    @bottom_left_blurb = Blurb.where(:identifier => 'home_bottom_left').first
    @bottom_middle_blurb = Blurb.where(:identifier => 'home_bottom_middle').first
    @bottom_right_blurb = Blurb.where(:identifier => 'home_bottom_right').first
    @top_middle_list = List.where(:identifier => 'home_top_middle').first
    
    respond_to do |format|
      format.html
    end
  end
end