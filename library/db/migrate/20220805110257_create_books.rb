class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :author_name
      t.string :genere
      t.string :Description
      t.string :book_code
      t.string :books_taken
      t.string :books_remaining
      t.string :total_books

      t.timestamps
    end
  end
end
