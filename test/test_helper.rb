# Start SimpleCov for test coverage reporting
require 'simplecov'
SimpleCov.start 'rails' do
  # Filters to exclude certain directories from the coverage report
  add_filter '/bin/'
  add_filter '/db/'
  add_filter '/test/' # Exclude test files themselves
end

# Ensure coverage report is generated before exiting
SimpleCov.at_exit do
  SimpleCov.result.format!
end

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
