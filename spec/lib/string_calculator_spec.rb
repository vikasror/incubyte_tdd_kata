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

    it 'output the sum of two numbers separated by a comma' do
      expect(subject.add("1,5")).to eq(6)
    end

    it 'returns the sum of all the numbers' do
      expect(subject.add("1,2,3,4,5,6")).to eq(21)
    end

    it 'returns the sum of all the numbers with new lines between numbers (instead of commas)' do
      expect(subject.add("1\n2,3")).to eq(6)
    end
  end
end
