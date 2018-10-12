class V1::BooksController < V1::BaseController
	    before_action :set_book, only: [:show, :destroy, :update]

	 def index
      books = Book.preload(:author, :book_copies)
      render json: books, adapter: :json
    end
 
    def show
      render json: @book, adapter: :json
    end
    private

    def set_book
      @book = Book.find(params[:id])
    end
end
