$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "discover/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "discover"
  s.version     = Discover::VERSION
  s.authors     = ["kikyous"]
  s.email       = ["kikyous@163.com"]
  s.homepage    = "http://github.com/kikyous/discover"
  s.summary     = "Summary of Discover."
  s.description = "Description of Discover."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta3", "< 5.1"
  s.add_development_dependency "sqlite3"
end
