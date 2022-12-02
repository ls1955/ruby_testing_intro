# frozen_string_literal: false

# basic calculator
class Calculator
  def add(*nums)
    nums.sum
  end

  def subtract(*nums)
    nums.reduce(:-)
  end

  def multiply(*nums)
    nums.reduce(:*)
  end

  def divide(*nums)
    return 0 if nums.first.zero?

    return 'Divide by zero error' if nums.include?(0)

    nums.reduce(:/)
  end
end
