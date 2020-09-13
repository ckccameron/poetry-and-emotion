class PoetryService
  def conn
    Faraday.new(url: "https://poetrydb.org")
  end
  
  def self.poems_by_author(author_name)
    binding.pry
    response = conn.get("/author/#{author_name}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

end
