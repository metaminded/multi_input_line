$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "multi_input_line/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "multi_input_line"
  s.version     = MultiInputLine::VERSION
  s.authors     = ["Mario Albert and Peter Horn"]
  s.email       = ["team@metaminded.com"]
  s.summary     = "Simplify several input_fields in one line with simple_form"
  s.description = "Simplify several input_fields in one line with simple_form, adds a 'as: :multi' option."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "3.2.13"
  s.add_dependency "jquery-rails"
end
