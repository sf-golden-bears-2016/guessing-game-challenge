class GuessingGame

attr_accessor :congrats_message 
attr_reader  :response, :allowed_guesses, :remaining_guesses


def initialize(secret_number, allowed_guesses)
	@secret_number = secret_number
	@allowed_guesses = allowed_guesses
	@congrats_message = "Yay, you won!"
	@remaining_guesses = allowed_guesses
	@past_guesses = []

end

def has_won?
	remaining_guesses == 0
end

def has_lost?
	until remaining_guesses == 0
	return false
	end
end

def guess(guess_number)
	@past_guesses << guess_number
	return @remaining_guesses -= 1 if !@past_guesses.include?(guess_number)
	if guess_number < @secret_number 
		 "Too low!"
	elsif guess_number > @secret_number
		 "Too high!"
	else
		"Correct! The number was 8"
	end
end
	 




end