class List
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :identifier,  :type => String
  field :title,       :type => String
  
  validates_presence_of :title
  
  embeds_many :bullets
end