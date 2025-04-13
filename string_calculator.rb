# string_calculator.rb
class StringCalculator
  return 0 if input.strip.empty?
  return input.to_i if !input.include?(",")

  numbers = input.split(",").map(&:to_i)
  numbers.sum
end
