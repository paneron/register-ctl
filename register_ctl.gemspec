# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "paneron/register_ctl/version"

Gem::Specification.new do |spec|
  spec.name          = "paneron-register_ctl"
  spec.version       = Paneron::RegisterCtl::VERSION
  spec.authors       = ["Ribose Inc."]
  spec.email         = ["open.source@ribose.com"]

  spec.summary       = "Manage Paneron register data"
  spec.description   = "A CLI to manage Paneron register data"
  spec.homepage      = "https://github.com/paneron/register-ctl"
  spec.license       = "BSD-2-Clause"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|bin|.github)/}) \
    || f.match(%r{Rakefile|bin/rspec})
  end
  spec.extra_rdoc_files = %w[README.adoc CHANGELOG.adoc LICENSE.txt]
  spec.bindir        = "bin"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 3.2.0"
  spec.executables = ["ctl"]

  # spec.add_runtime_dependency "yaml"

  spec.add_runtime_dependency "git", "~> 2.3.1"
  spec.add_runtime_dependency "lutaml-model", "~> 0.5.3"
  spec.add_runtime_dependency "paneron-register", "~> 0.3.2"
  spec.add_runtime_dependency "thor", "~> 1.3.2"
  spec.add_runtime_dependency "uuid", "~> 2.3.9"

  spec.add_development_dependency "debug"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-command", "~> 1.0"
  spec.add_development_dependency "rubocop", "~> 1.67.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.22.1"
  spec.add_development_dependency "rubocop-rake", "~> 0.6.0"
  spec.add_development_dependency "rubocop-rspec", "~> 3.1.0"
  spec.add_development_dependency "simplecov", "~> 0.15"
end
