require "codeclimate-test-reporter"
require 'rspec'

CodeClimate::TestReporter.start if ENV['CODECLIMATE_REPO_TOKEN']

require 'varify'

RSpec.configure do |c|
  
end