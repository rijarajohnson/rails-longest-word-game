require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    # PARSING
    @user_word = params[:user_word]
    url = "https://wagon-dictionary.herokuapp.com/#{@user_word}"
    dictionnary = open(url).read
    data = JSON.parse(dictionnary)
    #
  end
end
