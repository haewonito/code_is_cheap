require 'rspec'
require './lib/secret_code'

RSpec.describe SecretCode do

  it 'can generate a secret code' do

    secret_code1 = SecretCode.new

    expect(secret_code1.secret_code).to be_a(Array)
    expect(secret_code1.secret_code.length).to eq(4)

  end
end
