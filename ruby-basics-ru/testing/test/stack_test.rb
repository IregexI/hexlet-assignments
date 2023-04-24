# frozen_string_literal: true

require 'minitest-power_assert'
require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_power_assert_push
   test_stack = []
   stack_pushing = [2]
   assert{ test_stack.push(2) == stack_pushing }
  end

  def test_power_assert_pop
    test_stack = [2]
    stack_pop = []
    test_stack.pop
    assert{ test_stack == stack_pop }
  end

  def test_power_assert_clear
    test_stack = [2]
    stack_clear = []
    assert{ test_stack.clear == stack_clear }
  end

  def test_power_assert_empty
    test_stack = []
    stack_is_empty = true
    assert{ test_stack.empty? == stack_is_empty }
  end  
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
