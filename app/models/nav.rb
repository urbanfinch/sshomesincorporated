class Nav
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name,          :type => String
  field :identifier,    :type => String
  field :description,   :type => String
  
  validates_presence_of     :name
  
  default_scope ->{ where(:account_id => Account.current_id) }
  
  belongs_to  :account
  embeds_many :links
end