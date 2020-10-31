class Api::V1::TestsController < ApplicationController
  before_action :find_test, only: [:show, :update, :destroy]

  # GET /tests
  def index
    tests = Test.all
    render json: tests
  end

   # GET /tests/:id
  def show
    render json: @test
  end

  # POST /tests
  def create
    test = Test.new(test_params)
    
    if test.valid?
      test.save
      render json: test, status: :accepted
    else 
      render json: { errors: test.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # PUT /tests/:id
  def update
    @test.update(test_params)
    if @test.save
      render json: @test, status: :accepted
    else
      render json: { errors: @test.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # DELETE /tests/:id
  def destroy
    if @test.destroy
      render json: { message: "removed" }, status: :ok
    else
      render json: @test, message: "Failed to remove", status: :bad_request
    end
  end

  private

  def test_params
    # whitelist params
    params.require(:test).permit(:name)
  end

  def find_test
    @test = Test.find_by(:id => params[:id])
  end

end
