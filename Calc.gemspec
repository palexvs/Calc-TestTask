# -*- encoding: utf-8 -*-
require File.expand_path('../lib/Calc/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alexey"]
  gem.email         = ["palexvs@gmail.com"]
  gem.description   = %q{Do strange calculation}
  gem.summary       = %q{Calc - my test task}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "Calc"
  gem.require_paths = ["lib"]
  gem.version       = Calc::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "simplecov-gem-adapter"
end
