class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
    
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.valid?
      flash[:notice] = 'Book Created Successfully'
      redirect_to books_path
    else
      flash[:errors] = @book.errors.full_messages
      render :new
    end
  end

  def show
    @reviews = @book.reviews
  end

  def edit
  end

  def update
    if @book.update(book_params)
      flash[:notice] = 'Book Updated Successfully'
      redirect_to book_path(@book)
    else
      flash[:errors] = @book.errors.full_messages
      render :edit
    end
  end

  def destroy
    if @book.destroy
      flash[:notice] = 'Book Deleted Successfully'
      redirect_to books_path
    else
      flash[:errors] = @book.errors.full_messages
      redirect_to book_path(@book)
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :published_date, :genre)
  end
end
