require 'minitest/autorun'
require_relative '../lib/code_sequence'

class CodeSequenceTest < Minitest::Test
  def test_that_it_builds_a_sequence
    code = sequence.build
    assert_equal code.length, 4
    assert code.all? { |c| %w[r g b y].include?(c) }
  end

private
  def sequence
    CodeSequence.new
  end
end
