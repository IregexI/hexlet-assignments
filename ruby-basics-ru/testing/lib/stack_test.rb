require 'minitest/autorun'
require_relative 'stack'


class MyClass < Minitest::Test
  def setup; end

  def teardown; end

  def test_push
    arr = Stack.new
    element = "gem"
    arr_with_push = ["gem"]
    assert(arr.push!(element) == arr_with_push)
  end

  def test_pop
    arr = Stack.new
    arr.push!("12")
    arr.pop!
    arr_with_pop = [] 
    assert(arr.to_a == arr_with_pop)
  end

  def test_clear
    arr = Stack.new
    arr.push!(1)
    arr.push!(2)
    arr.clear!
    arr_with_clear = []
    assert(arr.to_a == arr_with_clear)
  end
  
  def test_empty
    arr = Stack.new
    assert(arr.empty? == true)
  end
end
