require 'spec_helper'

describe Smiling do

  describe '.video' do
    let(:video_id) { 'sm9' }
    let(:fixture_path) {
      File.expand_path("../fixtures/getthumbinfo_#{video_id}.txt", __FILE__)
    }

    before do
      stub_request(:get, "ext.nicovideo.jp/api/getthumbinfo/#{video_id}").
        to_return(File.new(fixture_path).read)
    end

    subject { Smiling.video(video_id) }
    its(:id) { should eq(video_id) }
  end

end
