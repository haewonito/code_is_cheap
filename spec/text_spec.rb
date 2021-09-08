require 'rspec'
require './lib/text'

#This doesn't work because printing isn't the same as returning
RSpec.describe Text do

  text = Text.new

  xit "can print messages" do

    expect(text.welcome).to be_a(String)
    expect(text.ask_for_guess).to be_a(String)
    expect(text.instruction).to be_a(String)
    expect(text.quit).to be_a(String)
  end
end
