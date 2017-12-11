# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jinda/version"

Gem::Specification.new do |spec|
  spec.name          = "jinda-adminlte"
  spec.version       = Jinda::VERSION
  spec.authors       = [ "Prateep Kul"]
  spec.email         = ["1.0@kul.asia"]

  spec.summary       = %q{Rails workflow from mind map}
  spec.description   = %q{Generate Rails workflow from mind map}
  spec.homepage      = "https://github.com/kul1/jinda"
  spec.license       = "MIT"
  spec.files         = Dir['Rakefile', '{bin,lib,test}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end