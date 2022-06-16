Gem::Specification.new do |spec|
  spec.name          = "lettuce_entertain_you"
  spec.version       = "1.0.0"
  spec.authors       = ["Mike Guterl", "Jim Graham"]
  spec.email         = ["mike@diminishing.org", "jim.graham@shopify.com"]

  spec.summary       = %q{Generate shrimp and lettuce text for slack.}
  spec.description   = %q{Generate shrimp and lettuce text for slack.}
  spec.homepage      = "https://github.com/mguterl/lettuce_entertain_you"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
