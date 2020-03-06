# frozen_string_literal: true

module Converters
  class BaseConverter
    attr_reader :convert_item

    def initialize(convert_item)
      @convert_item = convert_item
    end

    def call
      raise Converters::Errors, 'Converted item not number' unless numeric?

      convert!
    end

    private

    def numeric?
      return false unless convert_item

      return true if convert_item =~ /\A\d+\Z/

      true if Float(convert_item) rescue false
    end

    def convert!
      raise Converters::Errors, convert_item
    end
  end
end

class Converters::Errors < ArgumentError; end
