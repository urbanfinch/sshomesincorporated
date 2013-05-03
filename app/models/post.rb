class Post
  include Mongoid::Document
  include Mongoid::Timestamps
    
  field :title,     :type => String
  field :content,   :type => String
  field :published, :type => Boolean, :default => false
  
  validates_presence_of     :title, :content
end