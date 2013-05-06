class Blurb
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :content,     :type => String
  field :identifier,  :type => String
  field :subtitle,    :type => String
  field :title,       :type => String
  
  has_mongoid_attached_file :image,
    :default_url => '/assets/missing/:attachment/missing_:style.png'
    
end