require 'time'

module Smiling
  # Public: Video Represents a video of Nico Nico Douga.
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
    attr_reader :user_id

    # Public: Create an instance of Video.
    #
    # hash - The hash parameters contains response of getthumbinfo API.
    def initialize(hash)
      @id = hash['nicovideo_thumb_response']['thumb']['video_id']
      @title = hash['nicovideo_thumb_response']['thumb']['title']
      @description = hash['nicovideo_thumb_response']['thumb']['description']
      @thumbnail_url = hash['nicovideo_thumb_response']['thumb']['thumbnail_url']
      @first_retrieve = Time.parse(hash['nicovideo_thumb_response']['thumb']['first_retrieve'])
      @length = hash['nicovideo_thumb_response']['thumb']['length']
      @movie_type = hash['nicovideo_thumb_response']['thumb']['movie_type']
      @size_high = hash['nicovideo_thumb_response']['thumb']['size_high'].to_i
      @size_low = hash['nicovideo_thumb_response']['thumb']['size_low'].to_i
      @view_counter = hash['nicovideo_thumb_response']['thumb']['view_counter'].to_i
      @comment_num = hash['nicovideo_thumb_response']['thumb']['comment_num'].to_i
      @mylist_counter = hash['nicovideo_thumb_response']['thumb']['mylist_counter'].to_i
      @last_res_body = hash['nicovideo_thumb_response']['thumb']['last_res_body']
      @watch_url = hash['nicovideo_thumb_response']['thumb']['watch_url']
      @type = hash['nicovideo_thumb_response']['thumb']['thumb_type']
      @embeddable = hash['nicovideo_thumb_response']['thumb']['embeddable']
      @no_live_play = hash['nicovideo_thumb_response']['thumb']['no_live_play']
      @user_id = hash['nicovideo_thumb_response']['thumb']['user_id'].to_i
    end
  end
end







