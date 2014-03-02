class HomeController < ApplicationController
  
  def index
    @album = Album.where(:identifier => 'home').first
    @posts = Post.where(:published => true, :created_at.lte => Time.now).desc(:created_at).limit(5)
    @testimonials = Testimonial.limit(5)
    @top_left_blurb = Blurb.where(:identifier => 'home_top_left').first
    @bottom_left_blurb = Blurb.where(:identifier => 'home_bottom_left').first
    @bottom_middle_blurb = Blurb.where(:identifier => 'home_bottom_middle').first
    @bottom_right_blurb = Blurb.where(:identifier => 'home_bottom_right').first
    
    @client = Tumblr::Client.new
    @tumblr_posts = client.posts("szegar.tumblr.com", :limit => 1)
    
    respond_to do |format|
      format.html
    end
  end
end