# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require "strepi/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "strepi"
  s.version     = Strepi::VERSION
  s.authors     = ["bryangross"]
  s.homepage    = "http://github.com/bryangross/strepi"
  s.summary     = "Allows you to search through Amazon, Netflix, Hulu, ITunes, and Crunchyroll to see if a movie/TV show is available."
  s.description = "Strepi was made as an update to the now defunct MWhich[https://github.com/dacort/mwhich] created by dacort[https://github.com/dacort], which was no longer maintained because of the lack of a Netflix API. I was able to restore Netflix functionality to Strepi and add Crunchyroll[crunchyroll.com](Anime streaming website) service. Strepi checks to see if a movie/TV show is available on ITunes, Amazon, Crunchyroll, Netflix, or Amazon."
  s.license     = 'MIT-LICENSE'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
  s.require_paths = ["lib"]


  s.add_dependency "rails"
  s.add_dependency "nokogiri"
  s.add_dependency "yajl-ruby"
  s.add_dependency "ruby-hmac"
  s.add_dependency "amazon-ecs"
  s.add_dependency "netflix_roulette"
  s.add_dependency "test-unit"


  s.add_development_dependency "sqlite3"
end
