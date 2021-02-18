class Api::V1::SolutionsController < ApplicationController
  before_action :get_problem
  before_action :find_solution, only: [:show, :update, :destroy]
  before_action :authenticate_user, only: [:update, :destroy]

  # GET /problem/:id/solutions
  def index
    @solutions = @Problem.solutions
    render json: @solutions
  end

   # GET /solutions/:id
  def show
    render json: @solution
  end

  # POST /problem/:id/solutions
  def create
    @solution = @problem.solutions.build(solution_params)
    
    if @solution.valid?
      @solution.save
      render json: @solution, status: :accepted
    else 
      render json: { errors: @solution.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # PUT /problem/:id/solutions/:id
  def update
    @solution.update(solution_params)
    if @solution.save
      render json: @solution, status: :accepted
    else
      render json: { errors: @solution.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # DELETE /problem/:id/solutions/:id
  def destroy
    if @solution.destroy
      render json: { message: "removed" }, status: :ok
    else
      render json: @solution, message: "Failed to remove", status: :bad_request
    end
  end

  private

  def get_problem
     @problem = Problem.find(params[:problem_id])
   end

  def find_solution
    @solution = @problem.solutions.find_by(:id => params[:id])
  end

  def solution_params
    # whitelist params
    params.require(:solution).permit(:text, :language)
  end

end
