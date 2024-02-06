class AuthorController < ApplicationController
  def index
    @authors = Author.all
    render json: @authors
  end

  def show
    @author = Author.find(params[:id])
    render json: @author
  end

  def create
    @author = Author.new(name: params[:name])
    if @author.save
      render json: @author
    else
      render json: {error: "An error occured"}
    end

  end

  def update
    @author = Author.find(params[:id])
    if @author.update(name: params[:name])
      render json: @author
    else
      render json: {error: "Unable to update author"}
    end
  end

  def destroy
    @author = Author.find(params[:id])
    if @author.destroy
      render json: {message: "This author has been cancelled"}
    else
      render json: {error: "An error occured"}
    end
  end
end
