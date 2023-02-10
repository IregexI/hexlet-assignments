# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def setup; end

  def teardown; end
  
  def test_power_assert_push
    arr = Stack.new
    arr.push!("newfile")
    arr_push = ["newfile"]
    assert { arr.to_a == arr_push }
  end

  def test_power_assert_pop
    arr = Stack.new
    arr.push!("new")
    arr.pop!
    arr_pop = []
    assert { arr.to_a == arr_pop }
  end
  
  def test_power_assert_clear
    arr = Stack.new
    arr.push!("new")
    arr.clear!
    arr_clear = []
    assert { arr.to_a == arr_clear }
  end

  def test_power_assert_empty
    arr = Stack.new
    arr_empty = true 
    assert { arr.empty? == true }
  end
   
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
