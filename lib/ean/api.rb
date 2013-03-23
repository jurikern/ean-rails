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
      @@instance               = self.new
      @@instance.cid           = cid
      @@instance.key           = key
      @@instance.sig           = params[:sig].present? ? params[:sig] : ""
      @@instance.secret        = secret
      @@instance.version       = params[:version].present? ? params[:version] : "3"
      @@instance.locale        = params[:locale].present? ? params[:locale] : "en_US"
      @@instance.minor_rev     = params[:minor_rev].present? ? params[:minor_rev] : "4"
      @@instance.currency_code = params[:currency_code].present? ? params[:currency_code] : "USD"
    end

    def self.instance
      @@instance
    end
  end
end