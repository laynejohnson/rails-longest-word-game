class GamesController < ApplicationController
  def new
    # Display a new random grid and form
    @letters = ('a'..'z').to_a
    @random_letters = []

    10.times do ||
      @random_letter = @letters.sample
      @random_letters << @random_letter
    end
    @random_letters
    # @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score

    # submit form with POST
    @word = params[:word] # word from input
    @word_letters = @word.chars

    raise
    if letter_validator(@word_letters) == true
      @results = "Your word is #{@word_letters.length} letters!"
    else
      @results = "You cannot create that word!"
    end
  end

  def letter_validator(word_letters)
    word_letters.each do |letter|
      @random_letters.include?(letter)
    end
  end
end
