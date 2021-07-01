class QuestionsController < ApplicationController
  def ask
    params[:question]
  end

  def answer
    @answer = params[:question]
    @coach_answer = ""
    if @answer.downcase == "i am going to work right now!"
      @coach_answer = "Great!"
    elsif @answer.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
