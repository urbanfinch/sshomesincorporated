class Image
  include Mongoid::Document
  include Mongoid::Paperclip
  
  field :name,        :type => String
  field :identifier,  :type => String
  field :description, :type => String
  
  has_mongoid_attached_file :image
    
  validates_presence_of :name
  
  embedded_in :album
end