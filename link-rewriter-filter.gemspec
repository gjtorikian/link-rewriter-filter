# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'link-rewriter-filter'

Gem::Specification.new do |spec|
  spec.name          = "link-rewriter-filter"
  spec.version       = LinkRewriterFilter::VERSION
  spec.authors       = ["Garen Torikian"]
  spec.email         = ["gjtorikian@gmail.com"]

  spec.summary       = ""
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", ">= 2.0"
  spec.add_dependency 'html-pipeline', "~> 1.0"

  spec.add_development_dependency "jekyll-html-pipeline", "~> 0.1"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'nokogiri', '~> 1.6'
end