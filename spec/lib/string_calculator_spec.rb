# frozen_string_literal: true

require 'rails_helper'
require 'string_calculator'

RSpec.describe StringCalculator do
  subject { described_class.new }
  describe '#add' do
    it 'output should be 0 for an empty string' do
      expect(subject.add("")).to eq(0)
    end

    it 'output the number itself if only one input is given' do
      expect(subject.add("1")).to eq(1)
    end
  end
end
