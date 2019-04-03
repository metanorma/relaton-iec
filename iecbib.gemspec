
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iecbib/version"

Gem::Specification.new do |spec|
  spec.name          = "iecbib"
  spec.version       = Iecbib::VERSION
  spec.authors       = ["Ribose Inc."]
  spec.email         = ["open.source@ribose.com"]

  spec.summary       = "IsoBib: retrieve ISO Standards for bibliographic use "\
                       "using the BibliographicItem model"
  spec.description   = "IsoBib: retrieve ISO Standards for bibliographic use "\
                       "using the BibliographicItem model"
  spec.homepage      = "https://github.com/metanorma/isobib"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 2.0.1'
  spec.add_development_dependency 'equivalent-xml', '~> 0.6'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'ruby-debug-ide'
  spec.add_development_dependency 'debase'

  spec.add_dependency 'iso-bib-item', '~> 0.4.2'
  spec.add_dependency 'addressable'
end
