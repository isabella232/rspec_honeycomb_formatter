# frozen_string_literal: true

require_relative 'lib/rspec_honeycomb_formatter/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec_honeycomb_formatter'
  spec.version       = RspecHoneycombFormatter::VERSION
  spec.authors       = ['David Schmitt', 'Team IAC']
  spec.email         = ['david.schmitt@puppet.com', 'https://puppetlabs.github.io/iac/']

  spec.summary       = 'A custom RSpec formatter for https://honeycomb.io'
  spec.homepage      = 'https://github.com/puppetlabs/rspec_honeycomb_formatter'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/puppetlabs/rspec_honeycomb_formatter'
  spec.metadata['changelog_uri'] = 'https://github.com/puppetlabs/rspec_honeycomb_formatter/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
