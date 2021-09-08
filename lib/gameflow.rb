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
    if @guess.split("") == @secret_code
      @text.congrats
      exit
    end

    @text.ask_for_guess_again
    @guess = gets.chomp.downcase

    if @guess == 'q'
      puts "Bye!"
      exit
    end
  end


  def q_or_c

    if @guess == "q" || @guess == "quit"
      puts "Thanks for playing!"
      return true #for test
      abort
    elsif @guess == "c" || @guess == "cheat"
      puts @secret_code
      ask_for_another_guess
      return true #for test
    else
      return false #for test
    end
  end


  def invalid_guess

    if (@guess.length != 4)
      puts "Invalid input!"
      ask_for_another_guess
      # return true #for test
    elsif (@guess.length == 4)
      # return false#for test
    end
  end

  def correct_elements_calc

    count_let = 0
    available_letters = ['r', 'g', 'b', 'y']
    guess_array = @guess.split("")

    available_letters.each do |letter|
      if @secret_code.include?(letter) and guess_array.include?(letter)
        count_let += ([@secret_code.count(letter), guess_array.count(letter)].min)
      end
    end

    puts "You guessed #{count_let} correct colors!"
    count_let
  end

  def correct_index_pos

    count_let = 0
    guess_array = @guess.split("")

    [0, 1, 2, 3].each do |index|
      if @secret_code[index] == guess_array[index]
        count_let += 1
      end
    end
    puts "and #{count_let} correct location!"
    count_let
  end

  def end_game
    @text.congrats
    exit
  end
end
