# frozen_string_literal: true

class StringCalculator
  def add(input)
    return 0 if input.empty?

    input, delimiter = fetch_delimiter_and_input(input)
    input_arr = input.split(delimiter).map(&:to_i)

    neg_nums = input_arr.select { |num| num < 0 }
    raise "negative numbers not allowed #{neg_nums.join(', ')}" if neg_nums.present?

    input_arr.sum
  end

  private

  def fetch_delimiter_and_input(input)
    if input.start_with?("//")
      delimiter_string, input = input.split("\n")
      delimiter = /#{delimiter_string.split("//").last}/
    else
      delimiter = /[\n,]/
    end

    [input, delimiter]
  end
end
