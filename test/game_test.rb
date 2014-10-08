require 'minitest/autorun'
require_relative '../lib/game'

class GameTest < Minitest::Test
  def test_it_runs_instruction_input
    msg = "Guess until you get the right sequence.\n"
    assert_output msg do
      game.input = 'i'
      game.process_input
    end
  end

  def test_it_catches_invalid_commands
    msg = "Invalid command.\n"
    assert_output msg do
      game.input = 'x'
      game.process_input
    end
  end

private
  def game
    @game ||= Game.new
  end
end
