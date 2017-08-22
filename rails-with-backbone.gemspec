lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails-with-backbone/version"

Gem::Specification.new do |spec|
  spec.name          = "rails-with-backbone"
  spec.version       = RailsWithBackbone::VERSION
  spec.authors       = ["Igor Zubkov"]
  spec.email         = ["igor.zubkov@gmail.com"]

  spec.summary       = 'Vendored Backbone and dependencies for use with rails assets pipeline'
  spec.description   = 'Vendored Backbone and dependencies for use with rails assets pipeline'
  spec.homepage      = 'https://github.com/biow0lf/rails-with-backbone'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 4.2"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
