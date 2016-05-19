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

  def test_include?
    new_list=list
    new_list.append("plop")
    new_list.append("suu")
    new_list.prepend("dop")
    new_list.insert(1, "woo")
    tester=new_list.includes?("dep")
    assert_equal tester, false
  end

  def test_pop
    new_list=list
    new_list.append("plop")
    new_list.append("suu")
    new_list.prepend("dop")
    new_list.pop
    assert_equal new_list.to_string, "dop plop"
  end


  def test_pop_from_empty_list
    new_list=list
    assert_nil new_list.pop
  end

  def test_see_if_empty_list_includes_anything
    new_list=list
    assert_nil new_list.includes?("test")
  end

  # def test_insert_beyond_list_length
  #
  # end

end
