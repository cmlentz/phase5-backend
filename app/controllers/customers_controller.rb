class CustomersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    render json: Customer.all
  end

  def show
    customer = find_customer
    render json: customer, serializer: CustomerWithAnimalsSerializer
  end

  def create
    customer = Customer.create!(customer_params)
    render json: customer, status: :created
  end

  private

  def customer_params
    params.permit(:name, :city, :state)
  end
  
  def find_customer
    Customer.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Customer not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
