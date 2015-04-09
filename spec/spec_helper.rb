require 'pry'
require 'factory_girl_rails'
require 'support/factory_girl'
require 'support/login_support_methods'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
 
  config.order = :random
end
