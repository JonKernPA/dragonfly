json.array!(@books) do |book|
  json.extract! book, :id, :author, :title, :front_cover
  json.url book_url(book, format: :json)
end
