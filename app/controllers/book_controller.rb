class BookController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  def create
    @book = Book.new(title: params[:title])
    if @book.save
      render json: @book
    else
      render json: {error: "An error occured"}
    end

  end

  def update
    @book = Book.find(params[:id])
    if @book.update(name: params[:title])
      render json: @book
    else
      render json: {error: "Unable to update Book information"}
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      render json: {message: "This book has been destroyed"}
    else
      render json: {error: "An error occured"}
    end
  end
end
