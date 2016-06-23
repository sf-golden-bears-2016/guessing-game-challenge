require_relative '../guessing_game'

describe GuessingGame do
  let(:game) { GuessingGame.new(100,2) }

  describe 'initializes correctly' do
    let(:game) { GuessingGame.new() }

    it 'defaults to zero when secret number is not provided' do
      expect(game.secret_number).to eq 0
    end
    it 'defaults to zero when no number guesses are provided' do
      expect(game.number_of_guesses).to eq 0
    end

  end

end
