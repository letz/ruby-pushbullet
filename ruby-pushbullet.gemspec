Gem::Specification.new do |gem|
  gem.name          = %q{ruby-pushbullet}
  gem.version       = '0.1.3'
  gem.authors       = ['Ricardo Leitao']
  gem.email         = ['letzdevelopment@gmail.com']
  gem.summary       = %q{Ruby client of Pushbullet API.}
  gem.description   = %q{Ruby client of Pushbullet API.}
  gem.homepage      = %q{https://github.com/letz/ruby-pushbullet}
  gem.license       = 'MIT'

  gem.files         = Dir.glob("lib/**/*") + %w(README.md)
  gem.test_files    = Dir.glob("spec/**/*")
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 3.0.0'
  gem.add_development_dependency 'factory_girl'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'rubocop-rspec'
  gem.add_development_dependency 'awesome_print'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'simplecov'

  gem.add_dependency 'rest-client', '~> 1.7.2'
  gem.add_dependency 'json'
end
