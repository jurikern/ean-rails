module Ean
  class API
    attr_accessor :key, :cid, :secret, :version

    @@instance = nil

    def self.make(cid, key, secret, params={})
      @@instance = self.new(
          cid,
          key,
          secret,
          params[:version].present? ? params[:version] : "3"
      )
    end

    def self.instance
      @@instance ||= self.new(*Array.new(3, ""))
    end

    def initialize(cid, key, secret, version)
      self.key, self.cid, self.secret, self.version = key, cid, secret, version
    end
  end
end