class RegistersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def create
    register = Register.create!(register_params)
    render json: register.activity, status: :created
  end

  private

  def register_params
    params.permit(:customer_id, :activity_id)
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
  
end
