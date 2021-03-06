require 'faraday'

module Requests
  class Artists
    def self.list
      response = Faraday.get("https://www.moat.ai/api/task/", {params: nil}, { "Basic" => "ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=="})
      JSON.parse(response.body)
    end

    def self.names
      list.map { |artist_item| artist_item.first['name'] }
    end

    def self.artist_info(id)
      response = Faraday.get("https://www.moat.ai/api/task/?artist_id=#{id}", {params: nil}, { "Basic" => "ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=="})
      JSON.parse(response.body)
    end
  end
end
