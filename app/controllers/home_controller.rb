require 'net/http'

class HomeController < ApplicationController
  
  def index
    @album = Album.where(:identifier => 'home').first
    #@posts = Post.where(:published => true, :created_at.lte => Time.now).desc(:created_at).limit(5)
    @testimonials = Testimonial.limit(5)
    @top_left_blurb = Blurb.where(:identifier => 'home_top_left').first
    @bottom_left_blurb = Blurb.where(:identifier => 'home_bottom_left').first
    @bottom_middle_blurb = Blurb.where(:identifier => 'home_bottom_middle').first
    @bottom_right_blurb = Blurb.where(:identifier => 'home_bottom_right').first
    
    @url = URI.parse("http://api.tumblr.com/v2/blog/szegar.tumblr.com/posts/text?api_key=#{ENV['TUMBLR_API_KEY']}")
    @response = Net::HTTP.get_response(@url)
    @json = JSON.parse(@response.body)
    if !@json.nil? && @json['meta']['status'] == 200
      @posts = @json['response']['posts']
    else
      @posts = []
    end
    
    respond_to do |format|
      format.html
    end
  end
end