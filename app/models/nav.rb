class Nav
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name,          :type => String
  field :identifier,    :type => String
  field :description,   :type => String
  
  validates_presence_of     :name
  
  has_many :links
end