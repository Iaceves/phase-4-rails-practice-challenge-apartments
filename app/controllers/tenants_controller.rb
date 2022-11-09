class TenantsController < ApplicationController
  def index
    render json: Tenant.all, status: :ok
  end

  def create
    tenant = Tenant.create!(tenant_params)
    if tenant.save!
      render json: tenant, status: :created
    else
      render json: {errors: tenant.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    tenant = Tenant.find(params[:id])
    if tenant.valid?
      render json: tenant, status: :ok
    else
      render json: {messages: "not found"}, status: :not_found
    end
  end

  def update
    tenant = Tenant.find(params[:id])
    tenant.update(tenant_params)
    if tenant.save!
      render json: tenant, status: :created
    else
      render json: {error:  "not found"}, status: :not_found
    end
  end

  def destroy
    tenant = Tenant.find(params[:id])
    if tenant.destroy
      render json: tenant, status: :ok
    else
      render json: {error: not_found}, status: :not_found
    end
  end

  private

  def tenant_params
    params.required(:tenant).permit(:name, :age)
  end
end
