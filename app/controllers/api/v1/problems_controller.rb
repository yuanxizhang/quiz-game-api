class Api::V1::ProblemsController < ApplicationController
  before_action :find_problem, only: [:show, :update, :destroy]

  # GET /problems
  def index
    @problems = Problem.all
    render json: @problems
  end

   # GET /problems/:id
  def show
    render json: @problem
  end

  # POST /problems
  def create
    @problem = Problem.new(problem_params)
    
    if @problem.valid?
      @problem.save
      render json: @problem, status: :accepted
    else 
      render json: { errors: @problem.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # PUT /problems/:id
  def update
    @problem.update(problem_params)
    if @problem.save
      render json: @problem, status: :accepted
    else
      render json: { errors: @problem.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # DELETE /problems/:id
  def destroy
    if @problem.destroy
      render json: { message: "removed" }, status: :ok
    else
      render json: @problem, message: "Failed to remove", status: :bad_request
    end
  end

  private

  def problem_params
    # whitelist params
    params.require(:problem).permit(:text,
      solutions_attributes: [:id, :text, :language, :problem_id, :_destroy])
  end

  def find_problem
    @problem = Problem.find_by(:id => params[:id])
  end

end
