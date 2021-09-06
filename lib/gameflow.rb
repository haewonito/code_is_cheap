require './lib/text'
require './lib/secret_code'

class GameFlow

  attr_reader :guess, :secret_code
#@guess is a string. @guess_array is guess converted into array
  def initialize (secret_code)
    text = Text.new
    text.ask_for_guess_first_time
    @guess = gets.chomp.downcase
  end

  def ask_for_another_guess
    text.ask_for_guess_again
    @guess = gets.chomp
  end
#return true if q or c
  def q_or_c
    if @guess == ("q" or ("quit" or "Q"))
      puts "Thanks for playing!"
      return true
    elsif guess_string == ('c' or ("C" or "Cheat"))
      puts @secret_code
      return true
    end
  end
#return true if guess is invalid
#maybe consider people putting in invlid letters?
  def invalid_guess
    guess_array = @guess.split("")
    if (guess_array.length != 4)
      puts "Invalid input! Try again!"
      return true
    end
  end

  def correct_elements_calc

    count = 0
    available_letters = ['r', 'g', 'b', 'y']
    guess_array = @guess.split("")

    availble_letters.each do |letter|
      if @secret_code.count(letter) == guess_array.count(letter)
        count = count + @secret_code.count(letter)
      end
    end
    puts "You've guessed #{count} correct colors!"
  end

  def correct_index_pos

    count = 0
    guess_array = @guess.split("")

    [0, 1, 2, 3].each do |index|
      if @secret_code[index] == guess_array[index]
        count += 1
      end
    end
  end


#???? is this how you call method within the same class?
  def compare_n_print
    if ((!(q_or_c) and !(invalid_guess)) and !(@secret_code == @guess.split("")))
      correct_elements_calc
      correct_index_pos
      ask_for_another_guess
    end
  end

  def correct_guess
    if @secret_code == @guess.split("")
      puts "You made the correct guess!"
    end
  end

end
