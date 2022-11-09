class ApartmentsController < ApplicationController

  def index
    render json: Apartment.all, status: :ok
  end

  def create
    apartment = Apartment.create(apartment_params)
    if apartment.save!
      render json: apartment, status: :created
    else
      render json: {errors: apartment.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    apartment = Apartment.find(params[:id])
    if apartment
      render json: apartment, status: :ok
    else
      render json: {errors: "Apartement not found"}, status: :not_found
    end
  end

  def update
    apartment = Apartment.find(params[:id])
    apartment.update(apartment_params)
    if apartment.save!
      render json: apartment, status: :accepted
    else
      render json: {errors: "can not update"}, status: :not_found
    end
  end

  def destroy
    apartment = Apartment.find(params[:id])
    if apartment.destroy
      render json: {message: "sucessfully deleted!"}, status: :ok
    else
      render json: {errors: apartment.errors.full_messages}, status: :not_found
    end
  end

  private

  def apartment_params
    params.required(:apartment).permit(:number)
  end
end
