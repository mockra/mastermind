class Round
  attr_accessor :num_of_guesses, :start_time

  def initialize
    self.start_time = Time.now
    self.num_of_guesses = 0
  end

  def play
    puts 'Enter your guess'
    begin
      comp = comparison(gets.downcase.strip.split(''))
      self.num_of_guesses += 1
      sequence_message(comp).print
    end until comp.correct_guess?
    puts 'Do you want to (p)lay again or (q)uit?'
  end

private

  def sequence
    @sequence ||= CodeSequence.new.build
  end

  def comparison(guess)
    SequenceComparison.new(guess, sequence)
  end

  def sequence_message(comparison)
    SequenceMessage.new(comparison, num_of_guesses, guess_time)
  end

  def guess_time
    Time.now.to_i - start_time.to_i
  end
end
