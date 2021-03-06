lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elftools/version'
require 'date'

Gem::Specification.new do |s|
  s.name        = 'elftools'
  s.version     = ::ELFTools::VERSION
  s.date        = Date.today.to_s
  s.summary     = 'ELFTools - Pure ruby library for parsing ELF files'
  s.description = <<-EOS
  A light weight ELF parser. elftools is designed to be a low-level ELF parser.
  Inspired by https://github.com/eliben/pyelftools.
  EOS
  s.authors     = ['david942j']
  s.email       = ['david942j@gmail.com']
  s.files       = Dir['lib/**/*.rb'] + %w(README.md)
  s.homepage    = 'https://github.com/david942j/rbelftools'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.1.0'

  s.add_runtime_dependency 'bindata', '~> 2'

  s.add_development_dependency 'rspec', '~> 3.5'
  s.add_development_dependency 'rubocop', '~> 0.47'
  s.add_development_dependency 'rake', '~> 12.0'
  s.add_development_dependency 'simplecov', '~> 0.13.0'
  s.add_development_dependency 'codeclimate-test-reporter', '~> 0.6'
  s.add_development_dependency 'yard', '~> 0.9'
end
