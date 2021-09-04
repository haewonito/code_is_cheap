class Text

  def initialize
  end

  def welcome
    puts "Welcome to MASTERMIND\n\n"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def quit
    puts "That's too bad. Next time. Bye!"
  end

  def ask_for_guess
    puts "I have generated a beginner sequence with four elements made up of:"\
    "(r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the"\
    " game."
    puts "What's your guess?"
  end

  def instruction
    puts "Let's worry about instruction later."
  end

end
