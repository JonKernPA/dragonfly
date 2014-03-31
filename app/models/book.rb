class Book
  include MongoMapper::Document
  extend Dragonfly::Model

  include Rails.application.routes.url_helpers

  before_create :default_name

  key :author, String
  key :title, String
  key :front_cover_uid, String
  key :front_cover_name, String

  dragonfly_accessor :front_cover

  def to_jq_upload
    if front_cover
      {
          "name" => read_attribute(:front_cover_name),
          "name" => (title.blank? ? front_cover_name : title),
          "size" => front_cover.size,
          "url" => front_cover.url,
          "edit_url" => book_path(self),
          "thumbnail_url" => front_cover.thumb('100x50').url,
          "delete_url" => book_path(self),
          "delete_type" => "DELETE"
      }
    else
      {
          "name" => (title.blank? ? (author.blank? ? 'Unknown title/file' : author) : title),
          "url" => book_path(self),
          "size" => 0,
          "edit_url" => book_path(self),
          "delete_url" => book_path(self),
          "delete_type" => "DELETE"
      }
    end
  end

  def default_name
    self.title ||= self.front_cover_name.titleize if front_cover
    self.author ||= 'Anonymous'
  end
end
