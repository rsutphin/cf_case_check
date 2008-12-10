require File.expand_path('../lib/case_check', File.dirname(__FILE__))
require 'fileutils'

Spec::Runner.configure do |config|
  # == Mock Framework
  #
  # RSpec uses it's own mocking framework by default. If you prefer to
  # use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
end

def create_test_source(filename, content)
  FileUtils.mkdir_p File.dirname(filename)
  
  File.open(filename, 'w') do |f|
    f.write content
  end
  
  CaseCheck::ColdfusionSource.create(filename)
end

def touch(filename)
  FileUtils.mkdir_p File.dirname(filename)
  FileUtils.touch filename
end

# EOF
