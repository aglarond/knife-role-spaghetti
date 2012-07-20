# -*- encoding: utf-8 -*-
require File.expand_path('../lib/knife-role-spaghetti', __FILE__)

Gem::Specification.new do |gem|

  gem.name          = 'knife-role-spaghetti'
  gem.summary       = %q{Cut through the Role spaghetti with a Knife, Chef.}
  gem.description   = %q{This knife plugin extends the `knife role` command.}
  gem.version       = KnifeRoleSpaghetti::VERSION
  
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'chef'
  gem.add_dependency 'ruby-graphviz'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'aruba'
  gem.add_development_dependency 'tailor' # https://github.com/turboladen/tailor
  gem.add_development_dependency 'travis-lint'

  gem.authors       = ["Mike Fiedler"]
  gem.email         = ["miketheman@gmail.com"]
  gem.homepage      = "http://www.miketheman.net"

end
