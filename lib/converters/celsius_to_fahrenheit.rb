# frozen_string_literal: true

module Converters
  class CelsiumToFahrenheit < BaseConverter
    private

    def convert!
      (convert_item.to_f * 9 / 5) + 32
    end
  end
end
