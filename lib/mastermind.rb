require './text'
require './secret_code'
require './gameflow'

#attr_reader :answer, :text, :guess, :secret_code_for_game

@text = Text.new


def start

  @text.welcome
  @answer = gets.chomp

  if @answer.downcase == ('q' or 'quit')
    @text.quit
    exit
  elsif @answer.downcase == ('i' or 'instructions')
    @text.instruction
    self.start
  elsif @answer.downcase == ('p' or 'play')
    play_game
  else
    puts "That is not a valid answer"
    self.start
  end
end

def play_game
  secret_code1 = SecretCode.new
  @secret_code_for_game = secret_code1.secret_code
  turn_count = 0

  game_flow = GameFlow.new (@secret_code_for_game)


  100.times do

    if game_flow.guess == 'q'
      puts "Bye!"
      exit
    end

    turn_count += 1
    puts "You have made #{turn_count} guesses."


    if game_flow.guess == @secret_code_for_game
      game_flow.end_game
    else
      game_flow.q_or_c
      game_flow.invalid_guess
      game_flow.correct_elements_calc(game_flow.guess, @secret_code_for_game)
      game_flow.correct_index_pos(game_flow.guess, @secret_code_for_game)
      game_flow.ask_for_another_guess
    end


  end
end

start
