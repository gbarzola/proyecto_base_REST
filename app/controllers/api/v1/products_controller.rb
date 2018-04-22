class Api::V1::ProductsController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  # GET /products
  def index
    products = Product.order("created_at DESC")
    render json: {status: 'Exitoso', message: 'Productos cargados', data: products}, status: :ok
  end

  # GET /products/1
  def show
    products = Product.find(params[:id])
    render json: {status: 'Exitoso', message: 'Productos cargados', data: product}, status: :ok
  end
  
  
  
  private

    def producto_params
      params.permit(:id, :descripcion_producto, :precio_producto, :stockCrear)
    end
end