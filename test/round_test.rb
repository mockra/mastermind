require 'minitest/autorun'
require_relative '../lib/round'

class RoundTest < Minitest::Test
  def test_it_creates_start_time
    assert_equal round.start_time.class, Time
  end

  def test_it_creates_num_of_guesses
    assert_equal round.num_of_guesses, 0
  end

private
  def round
    @round = Round.new
  end
end
