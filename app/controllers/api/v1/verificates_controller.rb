class Api::V1::VerificatesController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  # GET /products
  def index
    productos = Producto.order("created_at DESC")
    render json: {status: 'Exitoso', message: 'Productos cargados', data: productos}, status: :ok
  end
  
  # POST /products
  # POST /products.json
  def create
    producto = Producto.new(producto_params)
    
    if Producto.exists?(id_producto: params[:id_producto])
        render json: {status: 'Error', message: 'No debe tener el mismo id'}, status: :unprocessable_entity
    else
        render json: {status: 'Excelente', message: 'El id es unico'}, status: :ok
    end
  end
  
  private

    def producto_params
      params.permit(:id_producto, :descripcion_producto, :precio_producto, :stockCrear)
    end
    
end