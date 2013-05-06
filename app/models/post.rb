class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :title,     :type => String
  field :content,   :type => String
  field :published, :type => Boolean, :default => false
  
  has_mongoid_attached_file :image,
    :default_url => '/assets/missing/:attachment/missing_:style.png'
    
  validates_presence_of     :title, :content
end