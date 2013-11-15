require File.expand_path('../lib/serve_dir/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yutaka HARA"]
  gem.email         = ["yutaka.hara.gmail.com"]
  gem.summary       = %q{Start local webserver on a directory}
  gem.description   = %q{Start local webserver on a directory (Useful for previewing static web pages)}
  gem.homepage      = 'https://github.com/yhara/serve_dir'
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "serve_dir"
  gem.require_paths = ['lib']
  gem.version       = ServeDir::VERSION

  gem.add_dependency("slop", "~> 2")
  gem.add_dependency("rack", "~> 1.5")
  gem.add_dependency("launchy", "~> 2.3.0")
end
