$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pamatat/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pamatat"
  s.version     = Pamatat::VERSION
  s.authors     = ["Drew-Mace"]
  s.email       = ["dremac1@live.com"]
  s.homepage    = "https://rubygems.org/gems/pamatat"
  s.summary     = "Pamatat is a ruby engine that will save developers time creating a simple to-do list."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
