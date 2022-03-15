# test/models/calculate_test.rb
require 'test_helper'
require 'calculate'

class CalculateTest < ActiveSupport::TestCase
  test 'add' do
  	expected = Calculate.sum(4, 5)
  	assert_equal expected, 9
  end

  test 'subtract' do
  	expected = Calculate.subtr(10, 5)
  	assert_equal expected, 5
  end

  test 'multiply' do
  	expected = Calculate.multiply(4, 5)
  	assert_equal expected, 20
  end

  test 'divide' do
  	expected = Calculate.divide(10, 2)
  	assert_equal expected, 5
  end
end