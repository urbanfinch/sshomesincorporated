class Image
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :name,        :type => String
  field :identifier,  :type => String
  field :description, :type => String
  
  has_mongoid_attached_file :image,
    :default_url => '/assets/missing/:attachment/missing_:style.png'
    
  validates_presence_of :name
  
  belongs_to :album
end