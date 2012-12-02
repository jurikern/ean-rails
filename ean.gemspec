$:.push File.expand_path("../lib", __FILE__)

require "ean/version"

Gem::Specification.new do |s|
  s.name        = "ean"
  s.version     = Ean::VERSION
  s.authors     = ["Juri Semjonov"]
  s.email       = ["js@codegears.co"]
  s.homepage    = "https://github.com/Semjonow/ean"
  s.summary     = "Expedia Affiliate Network REST API"
  s.description = "Expedia Affiliate Network REST API"

  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "httparty"
end
