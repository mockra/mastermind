class Game
  attr_accessor :input

  def process_input
    if play?
      Round.new.play
    elsif instructions?
      puts 'Guess until you get the right sequence.'
    else
      puts 'Invalid command.'
    end
  end

  def quit?
    input.downcase == 'q'
  end

  def play?
    input.downcase == 'p'
  end

  def instructions?
    input.downcase == 'i'
  end
end
