gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'JungleBeats'
require "minitest/pride"


class JungleBeatsTest < Minitest::Test
  def node
    ::Node.new
  end


    def test_stating_something
      remark = 'plop'
      assert_equal 'plop', bob.hey(remark), feedback(remark)
    end

    def test_shouting
      remark = 'WATCH OUT!'
      assert_equal 'doop', bob.hey(remark), feedback(remark)
    end


    h   = Node.new(1)
    list = LinkedList.new(h)

    (2..5).each {|n| list.insert(Node.new(n)) }

    puts "\nCurrent values contained in LinkedList:\n"

    list.print

    puts "\n"
    puts "Values of head and tail of LinkedList:\n"

    puts "\tValue of LL Head = #{list.head.value}"
    puts "\tValue of LL Tail = #{list.tail.value}"

    puts "\n"
    puts "Iterating through LinkedList without a block prints the list.\n"

    list.iterate

    puts "\n"
    puts "Iterating through the LinkedList with a block runs the block on each element.\n"

    list.iterate {|n| puts "\tLL Node Value squared = #{n ** 2}"}

    puts "\n"
