class SearchController < ApplicationController
  def index
    @poems = SearchFacade.author_name_first_ten_poem_results(params[:author])
  end
end
