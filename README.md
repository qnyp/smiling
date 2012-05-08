# Smiling

API wrapper for Nico Nico Douga.

## Installation

Add this line to your application's Gemfile:

    gem 'smiling'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smiling

## Usage

Fetch video information via getthumbinfo API.

    video = Smiling.video('sm9')
    puts video.title

    video.tags['jp'] do |tag|
      # tag is an instance of Smiling::Video
      print tag.value
      puts ' (lock)' if tag.locked?
    end

See also: [Nico Nico Douga API](http://dic.nicovideo.jp/a/%E3%83%8B%E3%82%B3%E3%83%8B%E3%82%B3%E5%8B%95%E7%94%BBapi)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
