json.extract! book, :id, :genre, :title, :author, :publisher, :quantity, :lost, :isbn, :created_at, :updated_at
json.url book_url(book, format: :json)