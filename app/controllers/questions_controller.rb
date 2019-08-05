class QuestionsController < ApplicationController
  # Define two methods
  # 1. QuestionsController
  def ask
  end

  # 2. Answer metoden skal matche filen: answer.html.erb
  def answer
    @question = params[:question]
    if @question == 'i am going to work right now!'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
