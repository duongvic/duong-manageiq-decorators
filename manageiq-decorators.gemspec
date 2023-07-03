# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'manageiq/decorators/version'

Gem::Specification.new do |spec|
  spec.name          = "manageiq-decorators"
  spec.version       = ManageIQ::Decorators::VERSION
  spec.authors       = ["ManageIQ Authors"]

  spec.summary       = "Model decorators with the related SVG assets for ManageIQ."
  spec.description   = "Model decorators with the related SVG assets for ManageIQ."
  spec.homepage      = "https://github.com/ManageIQ/manageiq-decorators"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "manageiq-style"
  spec.add_development_dependency "simplecov"
end
