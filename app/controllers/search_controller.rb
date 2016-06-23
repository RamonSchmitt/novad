class SearchController < ApplicationController
  def index
    @novels = Novel.joins(:author).
      search(search_param)

    respond_to do |format|
      format.html
      format.json { render json: @novels }
    end
  end

  private

  def search_param
    params.require(:search)
  end
end
