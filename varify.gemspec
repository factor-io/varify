# encoding: UTF-8
$LOAD_PATH.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'varify'
  s.version       = '0.0.5'
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Maciej Skierkowski']
  s.email         = ['maciej@factor.io']
  s.homepage      = 'https://factor.io'
  s.summary       = 'Varify'
  s.files         = Dir.glob('lib/**/*.rb')
  s.license       = 'MIT'
  
  s.require_paths = ['lib']

  s.add_development_dependency 'codeclimate-test-reporter', '~> 0.4.7'
  s.add_development_dependency 'rspec', '~> 3.2.0'
  s.add_development_dependency 'rake', '~> 10.4.2'
  s.add_development_dependency 'guard', '~> 2.12.5'
  s.add_development_dependency 'guard-rspec', '~> 4.5.0'
end