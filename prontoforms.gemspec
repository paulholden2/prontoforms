# frozen_string_literal: true

require_relative 'lib/prontoforms/version'

# rubocop:disable Layout/LineLength
Gem::Specification.new do |spec|
  spec.name = 'prontoforms'
  spec.version = ProntoForms::VERSION
  spec.authors = ['Paul Holden']
  spec.email = ['paul@codelunker.com']

  spec.summary = 'A library for using the ProntoForms REST API in Ruby applications.'
  spec.description = 'A library for using the ProntoForms REST API in Ruby applications.'
  spec.homepage = 'https://github.com/paulholden2/prontoforms'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/paulholden2/prontoforms'
  spec.metadata['changelog_uri'] = 'https://github.com/paulholden2/prontoforms/blog/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.82.0'
  spec.add_development_dependency 'sinatra', '~> 2.0'
  spec.add_development_dependency 'sinatra-contrib', '~> 2.0'
  spec.add_development_dependency 'webmock', '~> 3.6'
  spec.add_development_dependency 'yard', '~> 0.9'
end
# rubocop:enable Layout/LineLength
