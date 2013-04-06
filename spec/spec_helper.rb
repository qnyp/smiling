require 'simplecov'
SimpleCov.start do
  add_filter '.bundle/'
  add_filter 'spec/'
end

$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rspec'
require 'webmock/rspec'

require 'smiling'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect  # disables `should`
  end
end

# Public: Returns the String of specified file contents.
#
# filename - Fixture filename.
#
# Examples
#
#   stub_request(:get, 'ext.nicovideo.jp/api/getthumbinfo/sm9').
#     to_return(fixture_content('getthumbinfo_sm9.txt'))
#
# Returns the String.
def fixture_content(filename)
  path = File.expand_path("../fixtures/#{filename}", __FILE__)
  File.read(path)
end
