require File.expand_path('../lib/serve_dir/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yutaka HARA"]
  gem.email         = ["yutaka.hara.gmail.com"]
  gem.description   = %q{myrurema provides a command 'rurema', which helps searching/browsing/writing the Japanese Ruby documents (a.k.a Rurema http://bugs.ruby-lang.org/projects/rurema/wiki .)}
  gem.summary       = %q{Serves current directory at http://localhost:8181/}
  gem.homepage      = 'http://github.com/yhara/serve_dir'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "serve_dir"
  gem.require_paths = ['lib']
  gem.version       = ServeDir::VERSION

  gem.add_dependency("rack", "~> 1.4.1")
  #gem.add_dependency("launchy", "~> 2.1.0")
end
