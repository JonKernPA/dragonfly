class Book
  include MongoMapper::Document
  extend Dragonfly::Model

  key :author, String
  key :title, String
  key :front_cover_uid, String
  key :front_cover_name, String

  dragonfly_accessor :front_cover

end
