class OptionsController < ApplicationController
  before_action :find_option, only: [:show, :update, :destroy]

  # GET /options
  def index
    options = Option.all
    render json: options
  end

  # POST /options
  def create
    option = Option.new(option_params)
    
    if option.valid?
      option.save
      render json: option, status: :accepted
    else 
      render json: { errors: option.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # GET /options/:id
  def show
    render json: option
  end

  # PUT /options/:id
  def update
    option.update(option_params)
    if option.save
      render json: option, status: :accepted
    else
      render json: { errors: option.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # DELETE /options/:id
  def destroy
    option = Option.find_by(:id => params[:id])
    if option.destroy
      render json: { message: "removed" }, status: :ok
    else
      render json: option, message: "Failed to remove", status: :bad_request
    end
  end

  private

  def option_params
    # whitelist params
    params.permit(:name)
  end

  def find_option
    option = Option.find_by(:id => params[:id])
  end

end
