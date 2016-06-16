class BooksController < ApplicationController
	
	def index
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)

		if @book.save
			redirect_to root_path
	end

	private

	def book_params
		pararms.require(:book).permit(:title, :descript, :author)
	end
end
