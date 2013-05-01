class Album
  include MongoMapper::Document
  timestamps!
  
  key :name,                String
  key :description,         String
  key :thumb_file_name,     String
  key :thumb_file_size,     String
  key :thumb_content_type,  String
  key :thumb_updated_at,    String
  
  #has_attached_file :thumb, :styles => { :thumb => "300x300" }
  
  validates_presence_of :name
  
  def thumb
    {
      :thumb => ''
    }
  end
  
  many :images
end