# frozen_string_literal: true

require_relative '../lib/converters/base_converter'
require_relative '../lib/converters/celsius_to_fahrenheit'

module CLI
  module Commands
    extend Dry::CLI::Registry

    module Celsius
      class Fahrenheit < Dry::CLI::Command
        desc 'Convert Celsius to Fahrenheit'
        argument :celsius, desc: "Input celsius degree"

        def call(celsius: nil, **)
          fahrenheit = ::Converters::CelsiumToFahrenheit.new(celsius).call
          puts "#{celsius}°C => #{fahrenheit}°F"
        end
      end
    end

    CLI::Commands.register "-c -f", CLI::Commands::Celsius::Fahrenheit
  end
end
