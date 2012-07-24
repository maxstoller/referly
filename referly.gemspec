# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'referly/version'

Gem::Specification.new do |s|
  s.name        = 'referly'
  s.version     = Referly::VERSION
  s.authors     = ['maxstoller']
  s.email       = ['maxstoller@gmail.com']
  s.homepage    = ''
  s.summary     = %q{Referly API wrapper}
  s.description = %q{A Ruby wrapper for the Referly API.}

  s.rubyforge_project = 'referly'

  s.files         = [
    'lib/referly.rb',
    'lib/referly/client.rb',
    'lib/referly/version.rb',
    'lib/referly/account_proxy.rb'
  ]

  s.test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')
  s.executables   = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # specify any dependencies here; for example:
  # s.add_development_dependency 'rspec'
  s.add_runtime_dependency 'httparty'
end
