# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'e_markerclusterer/version'

Gem::Specification.new do |spec|
  spec.name          = "e_markerclusterer"
  spec.version       = EMarkerclusterer::VERSION
  spec.authors       = ["Sung Gon Yi"]
  spec.email         = ["skonmeme@gmail.com"]
  spec.license       = 'Apache License 2.0'

  spec.summary       = "Extended version of Google MarkerClusterPlus, which extends representation of cluster with various types of infographics."
  spec.description   = "Extended version of Google MarkerClusterPlus, which extends representation of cluster with various types of infographics like charts, table, infoboxes, and etc."
  spec.homepage      = "https://rubygems.org/gems/e_markerclusterer"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "https://rubygems.org"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end  

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  #spec.bindir        = "exe"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

#  spec.add_dependency "rails", "4.2.5.2"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
#  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
end
