module Smiling
  # Public: Tag represents a tag for video.
  class Tag
    attr_reader :value

    # Public: Create an instance of Tag.
    #
    # attributes - The hash options.
    #              :value - The String value of tag.
    #              :lock  - The Boolean value for lock state (optional).
    #
    # Examples
    #
    #   Tag.new(value: 'Foo')
    #   Tag.new(value: 'Foo', lock: true)
    def initialize(attributes)
      @value = attributes[:value] unless attributes[:value].nil?
      @lock = attributes[:lock].nil? ? false : attributes[:lock]
    end

    # Public: Returns true when tag is locked.
    #
    # Examples
    #
    #   tag = Tag.new(value: 'Foo', lock: true)
    #   tag.locked?
    #   # => true
    #
    # Returns the Boolean value.
    def locked?
      @lock
    end

    # Public: Returns the String represents tag.
    #
    # Examples
    #
    #   tag = Tag.new(value: 'Foo')
    #   tag.to_s
    #   # => "Foo"
    #
    # Returns the String.
    def to_s
      @value
    end
  end
end
