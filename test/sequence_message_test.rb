require 'minitest/autorun'
require_relative '../lib/sequence_message'

class SequenceMessageTest < Minitest::Test
  def test_that_it_prints_correct_message
    comparison.expect :num_of_correct_elements, 4
    comparison.expect :num_of_correct_positions, 4
    comparison.expect :guess, 'GRRB'
    comparison.expect :correct_guess?, true
    output = "Congratulations! You guessed the sequence 'GRRB' in 3 guesses"\
             " over 22 seconds.\n"
    assert_output(output) { sequence_message.print }
  end

  def test_that_it_outputs_positions_and_elements
    comparison.expect :num_of_correct_elements, 3
    comparison.expect :num_of_correct_positions, 2
    comparison.expect :guess, 'GRRB'
    comparison.expect :correct_guess?, false
    output = "'GRRB' has 3 of the correct elements with 2 in the correct"\
             " positions.\n"
    assert_output(output) { sequence_message.print }
  end

private
  def sequence_message
    @sequence_message ||= SequenceMessage.new(comparison, 3, "22")
  end

  def comparison
    @comparison ||= Minitest::Mock.new
  end
end
