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


def test_insert
  new_list=list
  new_list.append("plop")
  new_list.append("suu")
  new_list.prepend("dop")
  new_list.insert(1, "woo")
  assert_equal new_list.to_string, "dop woo plop suu"
end

def test_find
  new_list=list
  new_list.append("plop")
  new_list.append("suu")
  new_list.prepend("dop")
  new_list.insert(1, "woo")
  tester=new_list.find(2,1)
  assert_equal  "suu", tester
end

def test_include
  new_list=list
  new_list.append("plop")
  new_list.append("suu")
  new_list.prepend("dop")
  new_list.insert(1, "woo")
  tester=new_list.includes?("dep")
  assert_equal tester, false
end

end
