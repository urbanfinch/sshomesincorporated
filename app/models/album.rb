class Album
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :name,                :type => String
  field :identifier,          :type => String
  field :description,         :type => String
  
  has_mongoid_attached_file :image
  
  validates_presence_of :name
  
  default_scope ->{ where(:account_id => Account.current_id) }
  
  belongs_to  :account
  embeds_many :images, :cascade_callbacks => true
end