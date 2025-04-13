require_relative 'string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  it "returns 0 for an empty string" do
    expect(calculator.add("")).to eq(0)
  end

  it "returns the number itself when one number is given" do
  expect(calculator.add("1")).to eq(1)

  it "returns sum of two comma-separated numbers" do
   expect(calculator.add("1,2")).to eq(3)
  end
  
end