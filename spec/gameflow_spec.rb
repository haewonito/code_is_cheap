require 'rspec'
# require './lib/text'
# require './lib/introduction'
# require ',/lib/secret_code'
require './lib/gameflow'

RSpec.describe GameFlow do


  it "can respond if guess == q or c and return true" do
    game_flow_1 = GameFlow.new("rrrr")

    expect(game_flow_1.q_or_c('q')).to be true
    expect(game_flow_1.q_or_c('c')).to be true
    #expect(game_flow_1.q_or_c('Cheat')).to be true
    expect(game_flow_1.q_or_c('a')).to be false

  end

  xit "can catch an invalid_guess and return true" do

    expect(game_flow_1.invalid_guess('dgekg')).to be true
    expect(game_flow_1.invalid_guess('dge')).to be true
    expect(game_flow_1.invalid_guess('ggrr')).to be false

  end

  xit "can tell how many letters are correct" do

    expect(game_flow_1.correct_elements_calc("rrrr", "rrrg")).to eq(3)

  end












end
