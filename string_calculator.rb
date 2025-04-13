# string_calculator.rb
class StringCalculator
  def add(input)
    return 0 if input.strip.empty?

    delimiter = /,|\n/
    if input.start_with?("//")
      delimiter_line, input = input.split("\n", 2)
      custom_delimiter = delimiter_line[2..-1]
      delimiter = Regexp.escape(custom_delimiter)
    end

    numbers = input.split(/#{delimiter}/).map(&:to_i)
    numbers.sum
  end

end


