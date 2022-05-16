class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params['question'].capitalize
    if @answer == 'I am going to work'
      @resp = 'Great!'
      @url = 'https://c.tenor.com/zSePGwnl6_sAAAAC/yay-minions.gif'
    elsif  @answer.include?('?')
      @resp = 'Silly question, get dressed and go to work!'
      @url = 'https://c.tenor.com/FE6caXZ5sS0AAAAC/confused-wth.gif'
    else
      @resp = "I don't care, get dressed and go to work!"
      @url = 'https://thumbs.gfycat.com/AcrobaticYellowCoati-size_restricted.gif'
    end
  end
end
