# string_calculator.rb
class StringCalculator
  def add(input)
   return 0 if input.strip.empty?
    numbers = input.split(",").map(&:to_i)
    numbers.sum
  end
end
