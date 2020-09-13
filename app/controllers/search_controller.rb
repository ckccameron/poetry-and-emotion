class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://poetrydb.org")

    response = conn.get("/author/#{params[:author]}")

    json = JSON.parse(response.body, symbolize_names: true)

    @poems = json.first(10)

    conn2 = Faraday.new(url: ENV['IBM_API_URL']) do |connection|
      connection.basic_auth("apikey", ENV['IBM_API_KEY'])
    end

    response2 = conn.get("v3/tone?version=2017-09-21&text=#{poem.lines}")

    json2 = JSON.parse(response.body, symbolize_names: true)
  end
end
