# Smiling

[![Build Status](https://travis-ci.org/qnyp/smiling.png?branch=master)](https://travis-ci.org/qnyp/smiling)
[![Coverage Status](https://coveralls.io/repos/qnyp/smiling/badge.png?branch=master)](https://coveralls.io/r/qnyp/smiling)

API wrapper for Nico Nico Douga.

## Prerequisite

* Ruby 1.9.3
* Ruby 2.0.0-p0

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
