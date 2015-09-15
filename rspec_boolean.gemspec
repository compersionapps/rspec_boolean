# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_boolean/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_boolean"
  spec.version       = RspecBoolean::VERSION
  spec.authors       = ["Lorenzo Sinisi"]
  spec.email         = ["compersionapps@gmail.com"]

  spec.summary       = %q{Add be_boolean to Rspec}
  spec.description   = %q{Add be_boolean to Rspec}
  spec.homepage      = "https://github.com/compersionapps/rspec_boolean"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'rspec-expectations',   '~> 3.3.0'
  spec.add_dependency 'rspec-mocks',          '~> 3.3.0'
  spec.add_dependency 'rspec-core',           '~> 3.3.0'
  spec.add_dependency 'rspec',                '~> 3.3.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
