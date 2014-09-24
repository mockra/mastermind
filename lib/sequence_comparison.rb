class SequenceComparison
  attr_reader :guess, :answer

  def initialize(guess, answer)
    @guess, @answer = guess, answer
  end

  def num_of_correct_elements
    answer.select{ |l| guess.include?(l) }.count
  end

  def num_of_correct_positions
    guess.each_with_index.select{ |l, i| answer[i] == l }.count
  end

  def correct_guess?
    num_of_correct_positions + num_of_correct_elements == guess.length * 2
  end
end
