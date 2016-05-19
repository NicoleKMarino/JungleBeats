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

  def test_append_and_count
    new_list = list
    new_list.append("doop")
    new_list.append("deep")
    assert_equal 2, new_list.count
  end


def test_to_string
  new_list = list
  new_list.append("doop")
  new_list.append("deep")
  assert_equal new_list.to_string , "doop deep"
end

def test_append_prepend
  new_list=list
  new_list.append("plop")
  new_list.append("suu")
  new_list.prepend("dop")
  assert_equal new_list.to_string, "dop plop suu"
  assert_equal new_list.count, 3
end



end
