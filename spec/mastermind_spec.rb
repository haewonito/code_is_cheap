require 'rspec'
require './lib/text'
require './lib/introduction'
require './lib/mastermind'

RSpec.describe mastermind do

  start

  it 'can generate a secret code'
