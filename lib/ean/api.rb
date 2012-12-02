module Ean
  class API
    attr_accessor :key, :secret, :version

    @@instance = nil

    def self.make(key, secret, params={})
      @@instance = self.new(
          key,
          secret,
          params[:version].present? ? params[:version] : "3"
      )
    end

    def self.instance
      @@instance ||= self.new(*Array.new(3, ""))
    end

    def initialize(key, secret, version)
      self.key, self.secret, self.version = key, secret, version
    end
  end
end