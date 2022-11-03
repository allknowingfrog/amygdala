require_relative "lib/amygdala/version"

Gem::Specification.new do |spec|
  spec.name = "amygdala"
  spec.version = Amygdala::VERSION
  spec.authors = ["Jeremiah A. Bohling"]
  spec.email = ["jeremiah.bohling@gmail.com"]

  spec.summary = "A \"Lizard Brain\" for your BattleSnake"
  spec.description = "A simple framework for developing a BattleSnake API"
  spec.homepage = "https://github.com/allknowingfrog/amygdala"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sinatra", ["~> 3.0"]

  spec.add_development_dependency "rake", ["~> 13.0"]
  spec.add_development_dependency "rspec", ["~> 3.0"]
  spec.add_development_dependency "rack-test", ["~> 2.0"]

  spec.add_development_dependency "lefthook", ["~> 1.1"]
  spec.add_development_dependency "standard", ["~> 1.3"]
end
