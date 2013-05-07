class List
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :identifier,  :type => String
  field :title,       :type => String
  
  validates_presence_of :title
  
  default_scope ->{ where(:account_id => Account.current_id) }
  
  belongs_to  :account
  embeds_many :bullets
end