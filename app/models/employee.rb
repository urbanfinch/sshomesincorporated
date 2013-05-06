class Employee
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :email,           :type => String
  field :name,            :type => String
  field :subtitle,        :type => String
  field :title,           :type => String
  
  has_mongoid_attached_file :image,
    :default_url => '/assets/missing/:attachment/missing_:style.png',
    :styles => {
      :thumb       => ['185x185',   :png]
    }
  
  validates_presence_of     :name, :title
  validates_presence_of     :email
  validates                 :email, :email => true
  
  embeds_many :phones, :cascade_callbacks => true
  embeds_many :urls,   :cascade_callbacks => true
  
  accepts_nested_attributes_for :phones, :urls
end