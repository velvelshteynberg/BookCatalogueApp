class BooksController < ApplicationController

    def index
        @book = Book.all
    end 

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(picture_params)
        if @book.Save
            redirect_to books_url
        else
            render :new
        end 
    end 

    def show
        @book = Book.find(params[:id])
    end 

     

    def create
        render plain: "Saving a picture. Title: #{params[:title]}"
    end 
end
