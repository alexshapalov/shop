require 'rspec'
require "factory_bot"
require "rspec/expectations"
# require "./factories"

include FactoryBot::Syntax::Methods
# require "./spec/factories"

PROJECT_ROOT = File.expand_path("../..", __FILE__)

Dir.glob(File.join(PROJECT_ROOT, "lib", "*.rb")).each do |file|
  require file
end

Dir.glob(File.join(PROJECT_ROOT, "factories", "*.rb")).each do |file|
  require file
end