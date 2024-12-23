# frozen_string_literal: true

class StringCalculator
  def add(input)
    return 0 if input.empty?

    delimiter = /[\n,]/
    if input.start_with?("//")
      delimiter_string, input = input.split("\n")
      delimiter = /#{delimiter_string.split("//").last}/
    else
      delimiter = /[\n,]/
    end

    input.split(delimiter).map(&:to_i).sum
  end
end
