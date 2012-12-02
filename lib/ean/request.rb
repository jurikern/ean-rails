require "ean/api"

module Ean
  class Request
    attr_accessor :base_url, :api

    def initialize
      @api      = Ean::API.instance
      @base_url = "http://api.ean.com/ean-services/rs/hotel/v#{api.version}/"
    end
  end
end