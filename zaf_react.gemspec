lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "zaf_react/version"

Gem::Specification.new do |spec|
  spec.name          = "zaf_react"
  spec.version       = ZAFReact::VERSION
  spec.authors       = ["onlyexcellence"]
  spec.email         = ["will@wambl.com"]

  spec.summary       = %q{Zendesk App Framework with React}
  spec.homepage      = "https://github.com/onlyexcellence/zaf_react"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/onlyexcellence/zaf_react"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir["{bin,lib}/**/*", "LICENSE", "README.md"]
  spec.require_paths = ["lib"]
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }

  spec.add_dependency "thor", "~> 0.19.4"
  spec.add_dependency "awesome_print", "~> 1.8.0"
  spec.add_dependency "colorize", "~> 0.8.1"
  spec.add_dependency "zendesk_apps_tools", "~> 3.8.0"
end
