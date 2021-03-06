# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ampercoin/version'

Gem::Specification.new do |spec|
  spec.name          = "ampercoin"
  spec.version       = Ampercoin::VERSION
  spec.authors       = ["Mason Fischer"]
  spec.email         = ["mason@thoughtbot.com"]
  spec.summary       = %q{A simple cyptocurrency based on bitcoin}
  spec.description   = %q{A simple cyptocurrency based on bitcoin}
  spec.homepage      = "http://www.ampercoin.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "sqlite3"
  spec.add_dependency "activemodel"
  spec.add_dependency "activerecord"
  spec.add_dependency "digest-sha3"
end
