class Employee
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :email,           :type => String
  field :index,           :type => Integer, :default => 0
  field :name,            :type => String
  field :subtitle,        :type => String
  field :title,           :type => String
  
  has_mongoid_attached_file :image
  
  validates_presence_of     :name, :title
  validates_presence_of     :email
  validates                 :email, :email => true
  
  default_scope ->{ where(:account_id => Account.current_id) }
  
  belongs_to  :account
  embeds_many :phones, :cascade_callbacks => true
  embeds_many :urls,   :cascade_callbacks => true
  
  accepts_nested_attributes_for :phones, :urls
end