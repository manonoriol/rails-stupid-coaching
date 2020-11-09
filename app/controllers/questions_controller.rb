class QuestionsController < ApplicationController
  def ask; end

  def answer
    @message = params[:answer]
    answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @answer = if @message == 'I am going to work'
                answers[0]
              elsif @message.include? '?'
                answers[1]
              else
                answers[2]
              end
  end
end
