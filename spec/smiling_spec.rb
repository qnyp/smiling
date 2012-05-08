# -*- coding: utf-8 -*-
require 'spec_helper'
require 'time'

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
    its(:title) { should eq('新・豪血寺一族 -煩悩解放 - レッツゴー！陰陽師') }
    its(:description) { should eq('レッツゴー！陰陽師（フルコーラスバージョン）') }
    its(:thumbnail_url) { should eq('http://tn-skr2.smilevideo.jp/smile?i=9') }
    describe 'first_retrieve' do
      subject { Smiling.video(video_id).first_retrieve }
      it { should be_kind_of(Time) }
      it { should eq(Time.parse('2007-03-06 00:33:00 +0900')) }
    end
    its(:length) { should eq('5:19') }
    its(:movie_type) { should eq('flv') }
    describe 'size_high' do
      subject { Smiling.video(video_id).size_high }
      it { should be_kind_of(Integer) }
      it { should eq(21138631) }
    end
    describe 'size_low' do
      subject { Smiling.video(video_id).size_low }
      it { should be_kind_of(Integer) }
      it { should eq(17436492) }
    end
    describe 'view_counter' do
      subject { Smiling.video(video_id).view_counter }
      it { should be_kind_of(Integer) }
      it { should eq(9860861) }
    end
    describe 'comment_num' do
      subject { Smiling.video(video_id).comment_num }
      it { should be_kind_of(Integer) }
      it { should eq(3996941) }
    end
    describe 'mylist_counter' do
      subject { Smiling.video(video_id).mylist_counter }
      it { should be_kind_of(Integer) }
      it { should eq(110442) }
    end
    its(:last_res_body) { should eq('ギターソロ長門有希 憂ううううううううう ') }
    its(:watch_url) { should eq('http://www.nicovideo.jp/watch/sm9') }
    its(:type) { should eq('video') }
    its(:embeddable) { should eq('1') }
    its(:no_live_play) { should eq('0') }
    describe 'tags' do
      subject { Smiling.video(video_id).tags }
      it { should be_kind_of(Hash) }
      it { should have(2).tags }
      its(:keys) { should include('jp') }
      its(:keys) { should include('tw') }
      describe "tags['jp']" do
        subject { Smiling.video(video_id).tags['jp'] }
        it { should have(9).tag_objects }
        its(:first) { should be_kind_of(Smiling::Tag) }
      end
      describe "tags['tw']" do
        subject { Smiling.video(video_id).tags['tw'] }
        it { should have(4).tag_objects }
        its(:first) { should be_kind_of(Smiling::Tag) }
      end
    end
    describe 'user_id' do
      subject { Smiling.video(video_id).user_id }
      it { should be_kind_of(Integer) }
      it { should eq(4) }
    end
  end

end
