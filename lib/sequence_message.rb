class SequenceMessage
  attr_reader :comparison, :num_of_guesses, :guess_time

  def initialize(comparison, num_of_guesses, guess_time)
    @comparison, @num_of_guesses, @guess_time =
      comparison, num_of_guesses, guess_time
  end

  def print
    puts output
  end

private
  def output
    if correct_guess?
      "Congratulations! You guessed the sequence"\
      " '#{guess}'"\
      " in #{num_of_guesses} guesses"\
      " over #{guess_time} seconds.\n"
    else
      "'#{guess}' has"\
      " #{num_of_correct_elements} of the correct elements with"\
      " #{num_of_correct_positions} in the correct positions."
    end
  end

  def correct_guess?
    comparison.correct_guess?
  end

  def num_of_correct_positions
    @num_of_correct_positions ||= comparison.num_of_correct_positions
  end

  def num_of_correct_elements
    @num_of_correct_elements ||= comparison.num_of_correct_elements
  end

  def guess
    @guess ||= comparison.guess
  end
end
