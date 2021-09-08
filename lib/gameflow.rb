require './text'
require './secret_code'


class GameFlow

  attr_reader :guess, :secret_code, :text


  def initialize (secret_code)
    @text = Text.new
    text.ask_for_guess_first_time
    @secret_code = secret_code
    @guess = gets.chomp.downcase
  end



  def ask_for_another_guess
    @text.ask_for_guess_again
    @guess = gets.chomp.downcase
  end


  def q_or_c (guess)

    if guess == ("q" or ("quit" or "Q"))
      puts "Thanks for playing!"
      return true
    elsif guess == ('c' or ("C" or "Cheat"))
      puts secret_code
      return true
    else
      return false
    end
  end


  def invalid_guess (guess)

    if (guess.length != 4)
      puts "Invalid input! Try again!"
      return true
    elsif guess.length == 4
      return false
    end
  end

  def correct_elements_calc(guess, secret_code)

    count_let = 0
    available_letters = ['r', 'g', 'b', 'y']
    guess_array = guess.split("")

    available_letters.each do |letter|
      if secret_code.include?('letter') and guess_array.include?('letter')
        count_let += [secret_code.count('letter'), guess_array.count('letter')].min
      end
    end
    puts "You guessed #{count_let} correct colors!"
    return count_let #for test
  end

  def correct_index_pos(guess, secret_code)

    count_let = 0
    guess_array = guess.split("")

    [0, 1, 2, 3].each do |index|
      if secret_code[index] == guess_array[index]
        count_let += 1
      end
    end
    puts "and #{count_let} correct location!"
  end
end
