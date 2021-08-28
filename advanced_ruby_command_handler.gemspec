# frozen_string_literal: true

require_relative "lib/advanced_ruby_command_handler/version"

Gem::Specification.new do |spec|
  spec.name          = "advanced_ruby_command_handler"
  spec.version       = AdvancedRubyCommandHandler::VERSION
  spec.authors       = ["senchuu"]
  spec.email         = ["senchuuuu@gmail.com"]

  spec.summary       = "an advanced discord bot command handler"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/Senchuu/Advanced-Bot.rb"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Senchuu/Advanced-Bot.rb"
  spec.metadata["changelog_uri"] = "https://github.com/Senchuu/Advanced-Bot.rb"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features|logs)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "discordrb"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
