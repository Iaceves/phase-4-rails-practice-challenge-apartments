class LeasesController < ApplicationController
  def index
    render json: Lease.all, status: :ok
  end

  def create
    lease = Lease.create(lease_params)
    if lease.save!
      render json: lease, status: :created
    else
      render json: {message: "could not create"}, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def lease_params
    params.required(:lease).permit(:rent, :tenant_id, :apartment_id)
  end
end
