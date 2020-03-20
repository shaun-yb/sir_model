require_relative 'lib/sir_model/version'

Gem::Specification.new do |spec|
  spec.name          = "sir_model"
  spec.version       = SirModel::VERSION
  spec.authors       = ["FOO: Write your name"]
  spec.email         = ["FOO: Write your email address"]

  spec.summary       = %q{FOO: Write a short summary, because RubyGesswsms requires one.}
  spec.description   = %q{FOO: Write a longer description or deletessss this line.}
  spec.homepage      = "http://shauncar.land/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "FOO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "FOO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
