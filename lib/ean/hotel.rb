require 'ean/request'

module Ean
  class Hotel
    attr_accessor :request, :response

    def self.list(params={})
      instance = self.new("list")
    end

    def initialize(method="")
      @request = Ean::Request.new(method)
    end
  end
end