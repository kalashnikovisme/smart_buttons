# frozen_string_literal: true

require 'bundler/setup'
require 'smart_buttons'
require 'pry'
require 'action_view'

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'
  config.disable_monkey_patching!
  config.include SmartButtons
  config.include ActionView::Helpers
  config.include ActionView::Context
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
