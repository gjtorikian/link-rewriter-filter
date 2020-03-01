# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'link-rewriter-filter'
  spec.version       = '1.0.0'
  spec.authors       = ['Garen Torikian']
  spec.email         = ['gjtorikian@gmail.com']

  spec.summary       = 'A filter to rewrite links so that files can be viewable on GitHub and a static server'
  spec.homepage      = 'https://github.com/gjtorikian/link-rewriter-filter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'html-pipeline', '~> 2.0'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'nokogiri', '~> 1.6'
end
