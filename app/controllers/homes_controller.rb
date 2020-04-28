class HomesController < ApplicationController

  def top
  end

  def books
  	@book = Book.new
  	@books = Book.all
  end

  def new
  end

  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
     @book = Book.find(params[:id])
  end

  def update
  book = Book.find(params[:id])
  book.update(book_params)
  redirect_to books_path(book.id)
  end

  def create

    book = Book.new(book_params)
    book.save
    redirect_to homes_path(book.id)
  end

  def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to books_path
  end

  private

  def book_params
  params.require(:book).permit(:title, :body)
  end
end
