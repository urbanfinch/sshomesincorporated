class Testimonial
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name,         :type => String
  field :quote,       :type => String
  
  validates_presence_of     :name, :quote
end