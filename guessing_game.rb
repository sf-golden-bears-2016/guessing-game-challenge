class GuessingGame

  attr_accessor :congrats_message, :remaining_guesses

  def initialize(num1,num2)
    @guess_array=[]
    @remaining_guesses = num2
    @correct_number = num1
    @congrats_message = ""
  end


  def has_won?
    return false
  end

  def has_lost?
    return false
  end

  def guess(number)
    reduce_guesses(number)
    if number == @correct_number && @guess_array.include?(number)
      p "You already won. The number was #{@correct_number}"
    elsif number != @correct_number && @guess_array.include?(@correct_number)
      p "You already won. The number was #{@correct_number}"
    elsif number != @correct_number && @remaining_guesses == 0
      p "You lost! The number was #{@correct_number}"
    elsif number == @correct_number && number < 50
      p "Correct! The number was #{@correct_number}"
    elsif number == @correct_number && number > 50
      p "Yay, you won! The number was #{@correct_number}"
    elsif number < @correct_number == true &&  @remaining_guesses ==1
      p "Too low! WARNING: Only one guess left!"
    elsif number < @correct_number == true
      "Too low!"
    elsif number > @correct_number == true &&  @remaining_guesses ==1
      p "Too high! WARNING: Only one guess left!"
    elsif number > @correct_number == true
      "Too high!"
    end
  end

  def reduce_guesses(number)
    if @guess_array.include?(number) == false
      @guess_array << number
      @remaining_guesses -= 1
    elsif @guess_array.include?(number) == true
    end
  end
end

copied_game = Marshal.load(Marshal.dump(game))
