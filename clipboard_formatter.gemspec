# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/clipboard_formatter/version"

Gem::Specification.new do |gem|
  gem.name          = "clipboard_formatter"
  gem.version       = ClipboardFormatter::VERSION
  gem.summary       = "A clipboard formatter for RSpec."
  gem.description   = "Copies the list of failed examples to your clipboard so that you can restart them easily."
  gem.authors       = ["Jan Lelis"]
  gem.email         = "mail@janlelis.de"
  gem.homepage      = "https://github.com/janlelis/clipboard_formatter"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.0"
  gem.add_dependency 'rspec', '~> 3.0'
  gem.add_dependency 'clipboard', '~> 1.0'
end
