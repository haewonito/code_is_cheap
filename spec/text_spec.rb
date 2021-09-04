require 'rspec'
require './lib/text'


RSpec.describe Text do

  text = Text.new

  it "can print a welcome message" do

    text.welcome
    text.ask_for_guess
    text.instruction
    text.quit


  end


end
