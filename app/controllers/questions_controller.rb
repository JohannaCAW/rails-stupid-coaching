class QuestionsController < ApplicationController
  def answer
    @input = params[:input]
    @output = ""
    if @input.include?("?") && @input == @input.upcase
      @output = "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif @input.downcase == "i am going to work right now!"
      @output = "Great, finally."
    elsif @input == @input.upcase
      @output = "I can feel your motivation! I don't care, get dressed and go to work!"
    elsif @input.include?("?")
      @output = "Silly question, get dressed and go to work!"
    elsif @input == "I am going to work right now!"
      @output = "Great, finally."
    else
      @output = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end

