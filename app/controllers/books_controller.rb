class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  #view
  def new
    @book = Book.new
    @subjects = Subject.all
  end

  #action
  def create
    @book = Book.new(book_params)
  end

  def book_params
    params.require(:book).permit(:title, :price, :subject_id, :description)
  end

  #view
  def edit
    @book = Book.find(params[:id])
    @subjects = Subject.all
  end

  #action
  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      redirect_to action: "index"
    else
      @subjects = Subject.all
      render action: "edit"
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to action: "index"
  end


end
