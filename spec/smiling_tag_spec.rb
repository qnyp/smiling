# -*- coding: utf-8 -*-
require 'spec_helper'

describe Smiling::Tag do

  context 'tag is not locked' do
    let(:tag) { Smiling::Tag.new(value: 'Foo') }
    subject { tag }
    it { should_not be_locked }
    its(:value) { should eq('Foo') }
  end

  context 'tag is locked' do
    let(:tag) { Smiling::Tag.new(value: 'Foo', lock: true) }
    subject { tag }
    it { should be_locked }
  end

end
