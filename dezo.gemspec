
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dezo/version"

Gem::Specification.new do |spec|
  spec.name          = "dezo"
  spec.version       = Dezo::VERSION
  spec.authors       = ["Yuma Ishikawa"]
  spec.email         = ["yuma.fuu05@gmail.com"]

  spec.summary       = "dezo transrates words on cli."
  spec.description   = "dezo transrates words on cli."
  spec.homepage      = "https://github.com/YumaFuu/dezo"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 13.0"
end
