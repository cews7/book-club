require 'pry'
class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @new = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :action => "new"
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :page_count, :year_published)
  end
end
