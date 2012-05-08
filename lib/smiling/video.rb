module Smiling
  class Video
    attr_reader :id

    def initialize(hash)
      @id = hash['nicovideo_thumb_response']['thumb']['video_id']
    end
  end
end
