# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  s.name              = 'ffaker'
  s.version           = FFaker::VERSION
  s.date              = '2020-03-11'
  s.required_ruby_version = '>= 2.4'

  s.license = 'MIT'

  s.summary     = 'Ffaker generates dummy data.'
  s.description = 'Ffaker generates dummy data.'

  s.authors = [
    'https://github.com/ffaker/ffaker/graphs/contributors',
    'Emmanuel Oga'
  ]
  s.email    = 'EmmanuelOga@gmail.com'
  s.homepage = 'https://github.com/ffaker/ffaker'

  s.require_paths = %w[lib]

  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = %w[README.md LICENSE Changelog.md]

  # = MANIFEST =
  s.files = %w[
    Changelog.md
    Gemfile
    LICENSE
    RANDOM.md
    README.md
    REFERENCE.md
    Rakefile
    ffaker.gemspec
  ] + Dir['lib/**/*', 'scripts/*']
  # = MANIFEST =

  s.test_files = Dir['test/**/*']

  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'test-unit'
end
