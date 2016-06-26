require_relative '../guessing_game'

describe 'GuessingGame' do
	let(:game) { GuessingGame.new(8, 5) }

	describe '#initialize' do
		it 'has a secret number' do
			expect(game.secret_number).to eq 8
		end

		it 'has a number to guess' do
			expect(game.remaining_guesses).to eq 5
		end
	end
	
	describe '#congrats_message' do
		it 'has a default congrats message' do
			expect(game.congrats_message).to eq "Yay, you won!"
		end

		it 'sets a custom congrats message' do
			game.congrats_message = "Correct!"
			expect(game.congrats_message).to eq "Correct!"
		end
	end

	describe '#remaining_guesses' do
		it 'returns the amount of remaining guesses left' do
			expect(game.remaining_guesses).to eq 5
		end
	end

	describe '#has_won & #has_lost' do
		it 'returns false if user has not won' do
			expect(game.has_won?).to eq false
		end

		it 'returns false if user has not lost' do
			expect(game.has_lost?).to eq false
		end
	end

	describe '#guess' do
		it 'deducts from remaining guesses' do
			game.guess(4)
			expect(game.remaining_guesses).to eq 4
		end

		it 'does not deduct from remaining guesses if guess is repeated' do
			game.guess(4)
			expect(game.remaining_guesses).to eq 4
			game.guess(4)
			expect(game.remaining_guesses).to eq 4
		end

		describe 'winning and losing games get appropriate message' do
			let(:a_game) { GuessingGame.new(5,1) }

			it 'gets a loss message for losing game' do
				expect(a_game.guess(8)).to eq "You lost! The number was 5"
			end

			it 'gets a win message for winning game' do
				expect(a_game.guess(5)).to eq "Yay, you won! The number was 5"
			end
		end

		describe 'guesses on completed games do not alter remaining guesses' do
			it 'does not alter remaining guesses' do 
				game.guess(8)
				game.guess(7)
				expect(game.remaining_guesses).to eq 4
			end
		end

		describe 'returns proper feedback' do
			it 'returns correct feedback for higher number' do
				expect(game.guess(9)).to eq "Too high!"
			end
	
			it 'returns correct feedback for lower number' do
				expect(game.guess(7)).to eq "Too low!"
			end
		end

		describe 'gives warning when one guess is remaining' do
			let(:game2) { GuessingGame.new(7, 2) }

			it 'gives warning when there is only one guess remaining' do
				expect(game2.guess(4)).to eq "Too low! WARNING: Only one guess left!"
			end
	
			it 'gives warning when guess is repeated and 1 guess is remaining' do
				game2.guess(1)
				expect(game2.guess(1)).to eq "Too low! WARNING: Only one guess left!" 
			end
		end

		describe 'winning and losing messages are shown if still guessing' do
			it 'returns game status if already won' do
				game.guess(8)
				expect(game.guess(8)).to eq "You already won. The number was 8"
			end
		end
		
		describe 'records outcome correctly' do
			let(:new_game) { GuessingGame.new(4, 1) }

			it 'records outcome correctly for won game' do
				new_game.guess(4)
				expect(new_game.has_won?).to eq true
				expect(new_game.has_lost?).to eq false
			end

			it 'records outcome correctly for lost game' do
				new_game.guess(2)
				expect(new_game.has_lost?).to eq true
				expect(new_game.has_won?).to eq false
			end
		end
	end
end
