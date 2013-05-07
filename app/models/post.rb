class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :content,   :type => String
  field :published, :type => Boolean, :default => false
  field :summary,   :type => String
  field :title,     :type => String
  
  has_mongoid_attached_file :image
    
  validates_presence_of     :title, :summary, :content
  
  default_scope ->{ where(:account_id => Account.current_id) }
  
  belongs_to  :account
end