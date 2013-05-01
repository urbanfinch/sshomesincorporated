class Album
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :name,                :type => String
  field :description,         :type => String
  
  has_mongoid_attached_file :thumb,
    :default_url => '/assets/missing/:attachment/missing_:style.png',
    :styles => {
      :thumb       => ['300x300',   :png]
    }
  
  validates_presence_of :name
  
  has_many :images
end