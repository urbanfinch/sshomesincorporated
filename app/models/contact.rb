class Contact
  include MongoMapper::Document
  timestamps!
    
  key :name,    String
  key :email,   String
  key :phone,   String
  key :message, String
  
  validates_presence_of :name
end