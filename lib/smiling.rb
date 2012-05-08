require 'httparty'

# Public: Utility methods useful for fetching information from Nico Nico Douga.
# All methods are module methods and should be called on the Smiling module.
#
# Examples
#
#   Smiling.video('sm9')
#   # => #<Smiling::Video:0x007fd24bb62d88 @id="sm9">
module Smiling
  autoload :Tag, 'smiling/tag'
  autoload :Video, 'smiling/video'
  autoload :VERSION, 'smiling/version'

  include HTTParty
  base_uri 'ext.nicovideo.jp'

  # Public: Get video information with getthumbinfo API.
  #
  # id - The String of video id to get the information.
  #
  # Examples
  #
  #   video = Smiling.video('sm9')
  #   # => #<Smiling::Video:0x007fd24bb62d88 @id="sm9">
  #
  # Returns an instance of Smiling::Video.
  def self.video(id)
    Video.new(self.get("/api/getthumbinfo/#{id}"))
  end
end
