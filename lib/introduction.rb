#display prompt

require './lib/text'

class Introduction

 attr_reader :answer_for_intro

 def initialize
   text = Text.new
   text.welcome
   @answer_for_intro = gets.chomp
 end


end
