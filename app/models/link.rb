class Link
  include Mongoid::Document
  include Mongoid::Paperclip
  
  field :name,          :type => String
  field :description,   :type => String
  field :index,         :type => Integer, :default => 0
  field :url,           :type => String
  
  has_mongoid_attached_file :image
  
  validates_presence_of     :name, :url
  
  embedded_in :nav
end