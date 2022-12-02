# frozen_string_literal: false

require './lib/calculator'

describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      expect(subject.add(5, 2)).to eql(7)
    end

    it 'returns the sum of more than two numbers' do
      expect(subject.add(2, 5, 7)).to eql(14)
    end
  end

  describe '#subtract' do
    it 'returns the subtraction of first number with second number' do
      expect(subject.subtract(10, 8)).to eql(2)
    end

    it 'returns the subtraction of first number with other numbers' do
      expect(subject.subtract(100, 80, 10)).to eql(10)
    end
  end

  describe '#multiply' do
    it 'returns the multiplication of two numbers' do
      expect(subject.multiply(5, 10)).to eql(50)
    end

    it 'returns the multiplication of multiple numbers' do
      expect(subject.multiply(3, 4, 5)).to eql(60)
    end
  end

  describe '#divide' do
    it 'returns the division of two numbers' do
      expect(subject.divide(8, 2)).to eql(4)
    end

    it 'returns the division of first number with other numbers' do
      expect(subject.divide(100, 20, 5)).to eql(1)
    end

    it 'return 0 if first number is 0' do
      expect(subject.divide(0, 1, 2)).to eql(0)
    end

    it 'raise divide by zero exception if numbers other than first number is zero' do
      expect(subject.divide(1, 0)).to eql('Divide by zero error')
    end
  end
end
