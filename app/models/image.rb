class Image
  include MongoMapper::Document
  timestamps!
  
  key :name,        String
  key :description, String
  key :image_file_name,     String
  key :image_file_size,     String
  key :image_content_type,  String
  key :image_updated_at,    String
  
  #has_attached_file :image, :styles => { :large => "985x510", :thumb => "300x300" }
  
  validates_presence_of :name
  
  def thumb
    {
      :large => '',
      :thumb => ''
    }
  end
  
  belongs_to :album
end