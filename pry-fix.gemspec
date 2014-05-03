# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pry-fix/version"

Gem::Specification.new do |s|
  s.name        = 'pry-fix'
  s.version     = PryFix::VERSION
  s.licenses    = ['MIT']
  s.summary     = "Adds some commands to help fix up your code when using Pry for TDD."
  s.authors     = ["Joel Turnbull"]
  s.email       = 'joel@gaslight.co'
  s.homepage    = 'https://github.com/pry/pry-fix'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "pry"
  s.add_dependency "activesupport"
end
