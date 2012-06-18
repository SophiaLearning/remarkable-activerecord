# -*- coding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "remarkable-activerecord"
  s.version     = "4.0.0.alpha4"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Carlos Brando", "Ho-Sheng Hsiao", "José Valim", "Diego Carrion"]
  s.email       = "eduardobrando@gmail.com"

  s.add_dependency 'remarkable_activemodel'

  s.required_rubygems_version = ">= 1.3.6"

  # Man files are required because they are ignored by git
  git_files            = `git ls-files`.split("\n") rescue ''
  s.files              = git_files
  s.test_files         = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths      = ["lib"]
end
