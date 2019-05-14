$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "core"
  spec.version     = Core::VERSION
  spec.authors     = ["William Weckl"]
  spec.email       = ["william.weckl@gmail.com"]
  spec.homepage    = "https://app.rdstation.com.br"
  spec.summary     = "Summary of Core."
  spec.description = "Description of Core."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # TODO: INCLUIR SÓ AS LIBS DO RAILS NECESSÁRIAS
  spec.add_dependency "rails", "~> 5.2.3"
  spec.add_dependency "dry-types", ">= 1.0", "< 2.0"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails", '~> 3.8'
  spec.add_development_dependency "simplecov", '~> 0.16'
  spec.add_development_dependency "fivemat", "~> 1.3"
  spec.add_development_dependency "rspec_junit_formatter", '~> 0.4'
  spec.add_development_dependency "faker", '~> 1.9'
  spec.add_development_dependency "shoulda-matchers", '~> 3.1'
end
