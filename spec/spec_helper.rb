$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rspec'
require File.expand_path('../lib/smiling', __FILE__)

RSpec.configure do |config|
end
