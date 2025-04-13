require_relative 'string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  it "returns 0 for an empty string" do
    expect(calculator.add("")).to eq(0)
  end

  it "returns the number itself when one number is given" do
    expect(calculator.add("1")).to eq(1)
  end

  it "returns sum of two comma-separated numbers" do
    expect(calculator.add("1,2")).to eq(3)
  end

  it "returns sum of multiple comma-separated numbers" do
   expect(calculator.add("1,2,3,4")).to eq(10)
  end

   it "handles newline as a delimiter along with comma" do
    expect(calculator.add("1\n2,3")).to eq(6)
  end

  it "supports custom delimiter defined in format //;\n1;2" do
   expect(calculator.add("//;\n1;2")).to eq(3)
  end
end
