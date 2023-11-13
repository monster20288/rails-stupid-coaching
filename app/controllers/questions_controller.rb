class QuestionsController < ApplicationController
  def ask

  end

  def answer
    # userinput
    if params[:askquestion]
      @userinput = params[:askquestion]
    end
    # base on User input give ans
    if @userinput == "I am going to work"
      @answer = "Great!"
    elsif @userinput.end_with?("?")
      @answer = "Silly question, get dressed and go to work!."
    elsif @userinput == ""
      @userinput = "please Ask you question...."
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
