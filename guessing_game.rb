class GuessingGame

attr_accessor :congrats_message
attr_reader :remaining_guesses


def initialize(secret_number, allowed_guesses)
	@secret_number = secret_number
	@allowed_guesses = allowed_guesses
	@congrats_message = "Yay, you won!"
	@remaining_guesses = 5
	@past_guesses = []

end

def has_won?
	until remaining_guesses == 0
	return false
	end
end

def has_lost?
	until remaining_guesses == 0
	return false
	end
end

def guess(guess_number)
	if guess_number > @secret_number 
		p "Too low!"
		# @remaining_guesses -= 1
	end
	# @past_guesses << guess_number
end



end