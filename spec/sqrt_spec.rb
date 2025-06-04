require 'insight/sqrt'

describe Insight::Sqrt do
  describe '.calculate' do
    it 'returns the square root of a positive number' do
      expect(Insight::Sqrt.calculate(9)).to eq(3)
      expect(Insight::Sqrt.calculate(0)).to eq(0)
      expect(Insight::Sqrt.calculate(2.25)).to eq(1.5)
    end

    it 'raises error for negative input' do
      expect { Insight::Sqrt.calculate(-1) }.to raise_error(ArgumentError)
    end

    it 'raises error for non-numeric input' do
      expect { Insight::Sqrt.calculate("a") }.to raise_error(ArgumentError)
    end
  end
end
