# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'splapi/version'

Gem::Specification.new do |spec|
  spec.name          = 'splapi'
  spec.version       = SplAPI::VERSION
  spec.authors       = ['Yutaka Tachibana']
  spec.email         = ['yutaka.paradigm.shift@gmail.com']

  spec.summary       = 'splapi Client for ruby.'
  spec.description   = 'splapi Client for ruby.'
  spec.homepage      = 'https://github.com/saboyutaka/splapi_gem'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 0.9'
  spec.add_dependency 'faraday_middleware'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
end
