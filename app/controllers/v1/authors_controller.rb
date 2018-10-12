class V1::AuthorsController < V1::BaseController
        before_action :set_author, only: [:show, :destroy, :update]


    def index
        authors = Author.preload(:books)
        # render json: authors, adapter: :json
        render_collection authors, Author
    end
    def show
      if @author
        render_object @author
      else
        render_error "not found"
      end
    end

     private

    def set_author
      @author = Author.find(params[:id])
    end
end
