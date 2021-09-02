require 'faraday'

module Requests
  class Artists
    def self.list
      response = Faraday.get("https://www.moat.ai/api/task/", {params: nil}, { "Basic" => "ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=="})
      JSON.parse(response.body)
    end
  end
end
