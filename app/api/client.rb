require 'httparty'

class Client
  include HTTParty
  base_uri 'https://dogapi.dog/api/v2'

  def self.list_all_breeds
    response = get("/breeds", format: :plain)
    JSON.parse response
  rescue JSON::ParserError => e
    { error: "JSON parsing error: #{e.message}" }
  rescue StandardError => e
    { error: "Error: #{e.message}" }
  end

  def self.get_breed_info(breed_id)
    response = get("/breeds/#{breed_id}")
    response_body = response.body
    puts "Response Body: #{response_body}"
    JSON.parse(response.body)
  rescue JSON::ParserError => e
    { error: "JSON parsing error: #{e.message}" }
  rescue StandardError => e
    { error: "Error: #{e.message}" }
  end

end
