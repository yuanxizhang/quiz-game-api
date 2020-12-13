class Api::V1::SolutionsController < ApplicationController
  before_action :find_solution, only: [:show, :update, :destroy]

  # GET /solutions
  def index
    @solutions = Solution.all.order(:name)
    render json: @solutions
  end

   # GET /solutions/:id
  def show
    render json: @solution
  end

  # POST /solutions
  def create
    @solution = Solution.new(solution_params)
    
    if @solution.valid?
      @solution.save
      render json: @solution, status: :accepted
    else 
      render json: { errors: @solution.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # PUT /solutions/:id
  def update
    @solution.update(solution_params)
    if @solution.save
      render json: @solution, status: :accepted
    else
      render json: { errors: @solution.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # DELETE /solutions/:id
  def destroy
    if @solution.destroy
      render json: { message: "removed" }, status: :ok
    else
      render json: @solution, message: "Failed to remove", status: :bad_request
    end
  end

  private

  def solution_params
    # whitelist params
    params.require(:solution).permit(:text, :language, :problem_id)
  end

  def find_solution
    @solution = Solution.find_by(:id => params[:id])
  end

end
