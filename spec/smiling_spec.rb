# -*- coding: utf-8 -*-
require 'spec_helper'
require 'time'

describe Smiling do
  describe '.video(id)' do
    context "when id is 'sm9'" do
      before do
        stub_request(:get, 'ext.nicovideo.jp/api/getthumbinfo/sm9').
          to_return(fixture_content('getthumbinfo_sm9.txt'))
      end

      subject { Smiling.video('sm9') }
      it { should be_kind_of(Smiling::Video) }
      its(:id) { should eq('sm9') }
    end
  end
end
