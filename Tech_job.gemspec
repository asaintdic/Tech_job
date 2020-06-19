require_relative 'lib/Tech_job/version'

Gem::Specification.new do |spec|
  spec.name          = "Tech_job"
  spec.version       = TechJob::VERSION
  spec.authors       = ["Alain"]
  spec.email         = ["alains214@gmail.com"]

  spec.summary       = 
  spec.description   = 
  spec.homepage      = "https://github.com/asaintdic/Tech_job"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = 'https://rubygems.org/'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/asaintdic/Tech_job"
  spec.metadata["changelog_uri"] = "https://github.com/asaintdic/Tech_job/blob/master/NOTES.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
