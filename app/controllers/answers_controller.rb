class AnswersController < ApplicationController
  
  def create
    @qustion = Question.find(params[:question_id])
    @answer = @qustion.answers.create(answer_params)
    redirect_to question_path(@qustion)
  end

  def Destroy
    @qustion = Question.find(params[:question_id])
    @answer = @qustion.answers.find(params[:id])
    @answer.Destroy
    redirect_to question_path(@qustion)
  end

  private
    def answer_params
      params.require(:answer).permit(:answerer, :content)
    end

end
