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
