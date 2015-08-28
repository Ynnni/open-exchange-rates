# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'open_exchange_rates/version'

Gem::Specification.new do |spec|
  spec.name          = "open-exchange-rates"
  spec.version       = OpenExchangeRates::VERSION
  spec.authors       = ["Andrew Ostroumov"]
  spec.email         = ["andrew.ostroumov@gmail.com"]

  spec.summary       = %q{Ruby gem for Open Exchange Rates API}
  spec.description   = %q{Client library for talking to Open Exchange Rates API. }
  spec.homepage      = "https://github.com/Ynnni/open-exchange-rates"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
