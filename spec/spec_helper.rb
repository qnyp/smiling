$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rspec'
require 'webmock/rspec'

require 'smiling'

RSpec.configure do |config|
end
