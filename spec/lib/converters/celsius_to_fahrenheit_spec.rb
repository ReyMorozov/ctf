# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Converters::CelsiumToFahrenheit do
  subject { described_class.new(celsius).call }

  context 'when celsius is number' do
    let(:celsius) { 10 }

    it 'should convert celsius to fahrenheit' do
      expect(subject).to eq(50.0)
    end
  end

  context 'when celsius is number string' do
    let(:celsius) { '14' }

    it 'should convert celsius to fahrenheit' do
      expect(subject).to eq(57.2)
    end
  end

  context 'when celsius is string' do
    let(:celsius) { 'one' }

    it 'should raise error' do
      expect { subject }.to raise_error(Converters::Errors, 'Converted item not number')
    end
  end
end
