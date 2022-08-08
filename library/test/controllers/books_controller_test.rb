require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { Description: @book.Description, author_name: @book.author_name, book_code: @book.book_code, book_name: @book.book_name, books_remaining: @book.books_remaining, books_taken: @book.books_taken, genere: @book.genere, total_books: @book.total_books } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { Description: @book.Description, author_name: @book.author_name, book_code: @book.book_code, book_name: @book.book_name, books_remaining: @book.books_remaining, books_taken: @book.books_taken, genere: @book.genere, total_books: @book.total_books } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
