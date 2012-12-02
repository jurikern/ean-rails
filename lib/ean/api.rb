module Ean
  class API
    attr_accessor :key,
                  :cid,
                  :secret,
                  :version,
                  :locale,
                  :minor_rev,
                  :currency_code,
                  :customer_session_id,
                  :customer_ip_address,
                  :customer_user_agent,
                  :sig

    @@instance = nil

    def self.make(cid, key, secret, params={})
      @@instance = self.new(
          cid,
          key,
          secret,
          params[:version].present? ? params[:version] : "3",
          params[:locale].present? ? params[:locale] : "en_US",
          params[:minor_rev].present? ? params[:minor_rev] : "4",
          params[:currency_code].present? ? params[:currency_code] : "USD",
          params[:sig].present? ? params[:currency_code] : ""
      )
    end

    def self.instance
      @@instance
    end
  end
end