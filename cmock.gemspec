# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "CMock"
  spec.version       = "2.5.3.dev.aed11ad"
  spec.authors       = ["ThrowTheSwitch Team"]
  spec.email         = ["info@throwtheswitch.org"]

  spec.summary       = "CMock: A mock and stub generator for unit testing C."
  spec.description   = "CMock is a mock and stub generator and runtime for unit testing C. It integrates smoothly with Unity Test and automagically parses C headers to generate mock interfaces for testing."
  spec.homepage      = "https://github.com/ThrowTheSwitch/CMock"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ThrowTheSwitch/CMock"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # gemspec = File.basename(__FILE__)
  # spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    # ls.readlines("\x0", chomp: true).reject do |f|
      # (f == gemspec) ||
        # f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    # end
  # end
  spec.bindir = "bin"
  # spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.executables = ["cmock"]
  spec.require_paths = ["lib"]
  spec.files = Dir[
    "bin/cmock",
    "config/**/*.rb",
    "docs/**/*",
    "lib/**/*.rb",
    "scripts/**/*.rb",
    "src/cmock.c",
    "src/cmock.h",
    "src/cmock_internals.h",
    "vendor/unity/src/unity.c",
    "vendor/unity/src/unity.h",
    "vendor/unity/src/unity_internals.h",
    "vendor/unity/auto/**/*.rb"
  ]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "bundler", "~> 2.5"
  spec.add_dependency "minitest", "~> 5.25"
  spec.add_dependency "require_all", "~> 3.0"
  spec.add_dependency "constructor", "~> 2.0"
  spec.add_dependency "diy", "~> 1.1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

