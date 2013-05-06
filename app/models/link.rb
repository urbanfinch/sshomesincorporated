class Link
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :name,          :type => String
  field :description,   :type => String
  field :url,           :type => String
  
  has_mongoid_attached_file :image,
    :default_url => '/assets/missing/:attachment/missing_:style.png'
  
  validates_presence_of     :name, :url
  
  belongs_to :nav
end