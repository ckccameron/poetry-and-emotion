class SearchFacade
  def self.author_name_first_ten_poem_results(author_name)
    json = PoetryService.poems_by_author(author_name)
    # binding.pry
    poems = json

  end
end
