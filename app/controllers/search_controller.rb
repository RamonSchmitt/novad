class SearchController < ApplicationController
  def index
    @articles = Article.joins(:topics).
      search(search_param)

    respond_to do |format|
      format.html
      format.json { render json: @articles }
    end
  end

  private

  def search_param
    params.require(:search)
  end
end
