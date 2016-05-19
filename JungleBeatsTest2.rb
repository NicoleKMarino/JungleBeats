gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'JungleBeatsClass'
require "minitest/pride"
require "pry"

class JungleBeatsTest < Minitest::Test
  def jungleBeat
    ::JungleBeats.new
  end
  def beat
    ::JungleBeats.new
  end
  

  def test_creating_new
    jb = beat
    puts jb.inspect
  end

  def test_nil_head
    jb = beat
    assert_nil jb.list.head
  end

  def test_append_and_head
    jb = beat
    jb.append("deep doo ditt")
    tester=jb.list.head.value
    tester2= jb.list.head.next_node.value
    assert_equal jb.list.to_string, "deep doo ditt"
    assert_equal tester, "deep"
    assert_equal tester2, "doo"
  end

  def test_append_and_count
    jb = beat
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal jb.list.count,6
  end
end
