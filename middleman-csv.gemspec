# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name         = "middleman-csv"
  s.version      = "0.1.0"
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Yuri Kovalov"]
  s.email        = ["yuri@yurikoval.com"]
  s.homepage      = 'https://www.yurikoval.com/middleman-csv'
  s.summary       = 'Middleman extension for generating CSV from blog posts'
  s.description   = 'A Middleman extension that renders all blog posts in CSV format'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency("middleman-core", ["~> 4.0"])
end
