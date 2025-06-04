module Insight
  module Sqrt
    def self.calculate(x)
      raise ArgumentError, 'Input must be Numeric' unless x.is_a?(Numeric)
      raise ArgumentError, 'Cannot take sqrt of negative number' if x < 0
      Math.sqrt(x)
    end
  end
end
