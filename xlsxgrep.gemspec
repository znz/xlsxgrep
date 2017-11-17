# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "xlsxgrep/version"

Gem::Specification.new do |spec|
  spec.name          = "xlsxgrep"
  spec.version       = Xlsxgrep::VERSION
  spec.authors       = ["Kazuhiro NISHIYAMA"]
  spec.email         = ["zn@mbf.nifty.com"]

  spec.summary       = %q{grep for xlsx(xlsm) files}
  spec.description   = %q{grep for xlsx(xlsm) files using roo gem}
  spec.homepage      = "https://github.com/znz/xlsxgrep"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "roo"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
