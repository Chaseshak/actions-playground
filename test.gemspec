# frozen_string_literal: true

require_relative "lib/other/version"

Gem::Specification.new do |spec|
  spec.name = "test"
  spec.version = Other::VERSION
  spec.authors = ["chaseshak"]
  spec.email = ["chaseshak@github.com"]

  spec.summary = "This is a test gem"
  spec.description = "This is a test gem"
  spec.homepage = "https://example.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/example"
  spec.metadata["changelog_uri"] = "https://github.com/example/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|other|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activemodel",             "~> 7.0.4"
  spec.add_dependency "activesupport",           "~> 7.0.4"
  spec.add_dependency "addressable",             "~> 2.8.0"
  spec.add_dependency "colorize",                "~> 0.8.1"
  spec.add_dependency "concurrent-ruby",         "~> 1.1", ">= 1.1.8"
  spec.add_dependency "dotenv",                  "~> 2.8.1"
  spec.add_dependency "faraday",                 "~> 2.7.2"
  spec.add_dependency "faraday-multipart",       "~> 1.0"
  spec.add_dependency "faraday-http-cache",      "~> 2.4.1"
  spec.add_dependency "faraday-retry",           "~> 2.0"
  spec.add_dependency "git",                     "~> 1.8"
  spec.add_dependency "gitlab_chronic_duration", "~> 0.10.6.2"
  spec.add_dependency "octokit",                 "~> 5.6.1"
  spec.add_dependency "require_all",             "~> 3.0.0"
  spec.add_dependency "ruby-progressbar",        "~> 1.7"
  spec.add_dependency "thor",                    "~> 1.2.1"
  spec.add_dependency "uri-ssh_git",             "~> 2.0"
  spec.add_dependency "validate_url",            "~> 1.0.5"

  spec.add_development_dependency "bundler",             "~> 2.3"
  spec.add_development_dependency "debug",               "~> 1.7.1"
  spec.add_development_dependency "factory_bot",         "~> 6.1"
  spec.add_development_dependency "fakefs",              "~> 2.0"
  spec.add_development_dependency "faker",               "~> 2.16.0"
  spec.add_development_dependency "overcommit",          "~> 0.58.0"
  spec.add_development_dependency "rake",                "~> 13.0.1"
  spec.add_development_dependency "rspec",               "~> 3.9.0"
  spec.add_development_dependency "rspec-github",        "~> 2.3.0"
  spec.add_development_dependency "rubocop",             "~> 1.40"
  spec.add_development_dependency "rubocop-github",      "~> 0.20.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.15"
  spec.add_development_dependency "rubocop-rspec",       "~> 2.16"
  spec.add_development_dependency "ruby-debug-ide",      "~> 0.7.2"
  spec.add_development_dependency "shoulda-matchers",    "~> 5.3"
  spec.add_development_dependency "simplecov",           "~> 0.21.2"
  spec.add_development_dependency "vcr",                 "~> 6.1"
  spec.add_development_dependency "webmock",             "~> 3.18"
end
