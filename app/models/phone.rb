class Phone
  include Mongoid::Document
  include Mongoid::Timestamps
    
  field :type,    :type => String
  field :number,  :type => String
  
  validates_presence_of     :type, :number
  
  embedded_in :employee
end