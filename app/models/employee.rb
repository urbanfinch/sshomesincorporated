class Employee
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :name,                :type => String
  field :email,               :type => String
  field :description,         :type => String
  
  has_mongoid_attached_file :image,
    :default_url => '/assets/missing/:attachment/missing_:style.png',
    :styles => {
      :thumb       => ['185x185',   :png]
    }
  
  validates_presence_of     :name
  validates_presence_of     :email
  validates                 :email, :email => true
end