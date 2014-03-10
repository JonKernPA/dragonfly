class Book
  include MongoMapper::Document

  key :author, String
  key :title, String
  key :front_cover, String

end
