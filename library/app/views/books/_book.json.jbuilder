json.extract! book, :id, :book_name, :author_name, :genere, :Description, :book_code, :books_taken, :books_remaining, :total_books, :created_at, :updated_at
json.url book_url(book, format: :json)
