require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'should not save book without title' do
    book = Book.new(author: 'John Doe', published_date: '2022-01-01', genre: 'Fiction')
    assert_not book.save, 'Saved the book without a title'
  end

  test 'should not save book without author' do
    book = Book.new(title: 'Sample Title', published_date: '2022-01-01', genre: 'Fiction')
    assert_not book.save, 'Saved the book without an author'
  end

  test 'should not save book without published_date' do
    book = Book.new(title: 'Sample Title', author: 'John Doe', genre: 'Fiction')
    assert_not book.save, 'Saved the book without a published_date'
  end

  test 'should not save book without genre' do
    book = Book.new(title: 'Sample Title', author: 'John Doe', published_date: '2022-01-01')
    assert_not book.save, 'Saved the book without a genre'
  end
end
