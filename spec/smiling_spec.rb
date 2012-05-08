require 'smiling'

describe 'Smiling::VERSION' do
  subject { Smiling::VERSION }
  it { should_not be_nil }
end
