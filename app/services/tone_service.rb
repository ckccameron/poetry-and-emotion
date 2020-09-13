class ToneService
  def self.poem_tones
    response = conn.get("v3/tone?version=2017-09-21&text=#{poem.lines}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: ENV['IBM_API_URL']) do |connection|
      connection.basic_auth("apikey", ENV['IBM_API_KEY'])
    end
  end
end
