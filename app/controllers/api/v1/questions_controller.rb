class QuestionsController < ApplicationController
    before_action :find_question, only: [:show, :update, :destroy]

  # GET /questions
  def index
    questions = Todo.all
    render json: questions
  end

  # POST /questions
  def create
    question = Question.new(question_params)
    
    if question.valid?
      question.save
      render json: question, status: :accepted
    else 
      render json: { errors: question.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # GET /questions/:id
  def show
    render json: question
  end

 # PUT /tests/:id
 def update
    test.update(test_params)
    if test.save
      render json: test, status: :accepted
    else
      render json: { errors: test.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # DELETE /tests/:id
  def destroy
    test = Test.find_by(:id => params[:id])
    if test.destroy
      render json: { message: "removed" }, status: :ok
    else
      render json: test, message: "Failed to remove", status: :bad_request
    end
  end
  

  private

  def question_params
    # whitelist params
    params.permit(:question, :answer, :explain, :test_id)
  end

  def find_question
    question = Question.find_by_id(params[:id])
  end

end
