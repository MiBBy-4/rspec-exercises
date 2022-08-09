# frozen_string_literal: true

# This file is used for require all Modules, File, Environments, Support files and etc for testing
require_relative '../lib/exchange_it'

# Configure rspec
RSpec.configure do |config|
  # Add metadata in all files in exchange_it/utils folder
  config.define_derived_metadata(file_path: %r{exchange_it/utils}) do |meta|
    meta[:utils] = true
  end

  # Run tests only if condition is true
  config.filter_run_excluding :win_only unless RUBY_PLATFORM.match?(/mingw/i)

  # That configuration save all failure tests in txt file, that help run only failure tests
  config.example_status_persistence_file_path = 'spec/specs.txt'
end
