require 'time'

module Smiling
  # Public: Video represents a video of Nico Nico Douga.
  class Video
    attr_reader :id
    attr_reader :title
    attr_reader :description
    attr_reader :thumbnail_url
    attr_reader :first_retrieve
    attr_reader :length
    attr_reader :movie_type
    attr_reader :size_high
    attr_reader :size_low
    attr_reader :view_counter
    attr_reader :comment_num
    attr_reader :mylist_counter
    attr_reader :last_res_body
    attr_reader :watch_url
    attr_reader :type
    attr_reader :embeddable
    attr_reader :no_live_play
    attr_reader :tags
    attr_reader :user_id

    # Public: Create an instance of Video.
    #
    # doc - The Nokogiri::XML::Document contains response of getthumbinfo API.
    def initialize(doc)
      thumb = doc.xpath('nicovideo_thumb_response/thumb')
      @id = thumb.xpath('video_id').text
      @title = thumb.xpath('title').text
      @description = thumb.xpath('description').text
      @thumbnail_url = thumb.xpath('thumbnail_url').text
      @first_retrieve = Time.parse(thumb.xpath('first_retrieve').text)
      @length = thumb.xpath('length').text
      @movie_type = thumb.xpath('movie_type').text
      @size_high = thumb.xpath('size_high').text.to_i
      @size_low = thumb.xpath('size_low').text.to_i
      @view_counter = thumb.xpath('view_counter').text.to_i
      @comment_num = thumb.xpath('comment_num').text.to_i
      @mylist_counter = thumb.xpath('mylist_counter').text.to_i
      @last_res_body = thumb.xpath('last_res_body').text
      @watch_url = thumb.xpath('watch_url').text
      @type = thumb.xpath('thumb_type').text
      @embeddable = thumb.xpath('embeddable').text
      @no_live_play = thumb.xpath('no_live_play').text

      @tags = {}
      thumb.xpath('tags').each do |tags|
        domain = tags['domain']
        @tags[domain] = []
        tags.xpath('tag').each do |tag|
          lock = tag['lock'] == '1' ? true : false
          @tags[domain] << Tag.new(value: tag.text, lock: lock)
        end
      end

      @user_id = thumb.xpath('user_id').text.to_i
    end
  end
end
