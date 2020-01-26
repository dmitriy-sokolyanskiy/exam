lib = File.expand_path('lib', __FILE__ )
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/exam/version'
puts ">>>>11 #{lib}"
puts ">>>>12 #{$LOAD_PATH.include?(lib)}"
Gem::Specification.new do |spec|
  spec.name          = "exam"
  spec.version       = Exam::VERSION
  spec.authors       = ["Mater Yoda"]
  spec.email         = ["magic@gmail.com"]

  spec.summary       = 'Just example'
  spec.description   = 'Just example too'
  spec.homepage      = "https://github.com/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.3")

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/'
  spec.metadata["changelog_uri"] = 'https://github.com/'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
