#require 'cucumber/rails'

#Capybara.default_selector = :css

#ActionController::Base.allow_rescue = false

#begin
#  DatabaseCleaner.strategy = :transaction
#rescue NameError
#  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
#end

#Cucumber::Rails::Database.javascript_strategy = :truncation


#require_relative "../../orientacao_pedagogica_escolar"
 
ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..', '..', 'config/boot.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = eval("Rack::Builder.new {( " + File.read(File.dirname(__FILE__) + '/../../config.ru') + "\n )}")

class SomeWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  SomeWorld.new
end