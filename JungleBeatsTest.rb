gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'JungleBeats'
require "minitest/pride"
require "pry"

class JungleBeatsTest < Minitest::Test
  def list
    ::LinkedList.new
  end

  def test_head
    new_list = list
    assert_nil list.head
  end


  def test_append
    new_list = list
    new_list.append("plop")
    tester=new_list.head
    assert_equal tester.value, "plop"
    assert_nil tester.next_node
  end

  def test_counter
    new_list = list
    new_list.append("doop")
    assert_equal 1, new_list.count
  end

  def test_string
    new_list = list
    new_list.append("doop")
    tester=new_list.to_string
    assert_equal tester, "doop"
  end

end
