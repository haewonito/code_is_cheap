
class SecretCode

  attr_reader :secret_code

  def initialize
    @secret_code = []
    4.times do
      @secret_code << ['g', 'b', 'y', 'r'].sample
    end
  end
end
