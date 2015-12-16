# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pushbullet/version'

Gem::Specification.new do |gem|
  gem.name          = 'ruby-pushbullet'
  gem.version       = Pushbullet::VERSION
  gem.authors       = ['Ricardo Leitao']
  gem.email         = ['letzdevelopment@gmail.com']
  gem.licenses     = ['MIT']

  gem.summary       = %q{Ruby client of Pushbullet API.}
  gem.description   = %q{Ruby client of Pushbullet API.}
  gem.homepage      = %q{https://github.com/letz/ruby-pushbullet}

  gem.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  gem.bindir        = 'exe'
  gem.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 3.0.0'
  gem.add_development_dependency 'factory_girl'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'rubocop-rspec'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'pry'

  gem.add_dependency 'rest-client', '~> 1.8.0'
  gem.add_dependency 'json'
end
