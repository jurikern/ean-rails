require "ean/api"

module Ean
  class Request
    attr_accessor :base_url, :api

    def initialize(method="")
      @api      = Ean::API.instance
      @base_url = "http://api.ean.com/ean-services/rs/hotel/v#{api.version}/#{method}?cid=#{api.cid}&apiKey=#{api.key}\
                   &locale=#{api.locale}&currencyCode=#{api.currency_code}&minorRev=#{api.minor_rev}"
    end
  end
end