class Cli
  def run
    print_intro
    begin
      game.input = gets.strip
      return if game.quit?
      game.process_input
    end until game.quit?
  end

private
  def game
    @game ||= Game.new
  end

  def print_intro
    puts 'Welcome to MASTERMIND'
    puts 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
  end
end
