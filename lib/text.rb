class Text

  def welcome
    puts "Welcome to MASTERMIND\n\n"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def quit
    puts "That's too bad. Next time. Bye!"
  end

  def ask_for_guess_first_time
    puts "I have generated a beginner sequence with four elements made up of:"\
    "(r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the"\
    " game."
    puts "What's your guess?"
  end

  def ask_for_guess_again
    puts "Would you like to make another guess?"
  end

  def instruction
    puts "This is a game of memory and chance!"
    puts "The computer will generate a random sequence of 4 colors in 4 positions"
    puts "and it is your task to guess which colors are in what position!"
    puts "------"
    puts "The Colors: (r)ed, (g)reen, (b)lue, and (y)ellow."
    puts "------"
    puts "When prompted to enter your guess, enter the first leter of each color"
    puts "you think is in the code, and in the sequence you wish to guess!"
    puts "The computer will evaluate your sequence against it's secret code,"
    puts "and let you know how many colors are correct, and whether or not they"
    puts "are in the correct order!"
    puts "A turn will look something like this:"
    puts "Your guess? > rggy"
    puts "*This player selected (r)ed, (g)reen, (g)reen, (y)ellow*"
    puts "*The computer will then evalute your guess...*"
    puts " 'RGGY' has 3 of the correct colors in 2 of the correct positions!' "
    puts "This means 2 of the guessed colors are correct and in the correct"
    puts "sequence, while one additional color is correct, but in the wrong place!"
    puts "Guess the correct seqence in less than 13 tries, and you win!!"
    puts "*whispers* If you ever get stuck, don't worry. Just enter the letter 'c'"
    puts "at any point, and the computer will tell you the code ;)"
    puts '-----'
    puts "Ready to play? Type (p)lay or (q)uit."
  end



end
