class Api::V1::ProductosController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  # GET /products
  def index
    productos = Producto.order("created_at DESC")
    render json: {status: 'Exitoso', message: 'Productos cargados', data: productos}, status: :ok
  end

  # GET /products/1
  def show
    productos = Producto.find(params[:id_producto])
    render json: {status: 'Exitoso', message: 'Productos cargados', data: producto}, status: :ok
  end
  
  def create
        producto = Producto.new(producto_params)
         
            if producto.save
                render json: {status: 'Exitoso', message: 'Producto creado', data: producto}, status: :ok
            else
                render json: {status: 'Error', message: 'No se grabo producto', data: producto.errors}, status: :unprocessable_entity
            end
        
    end
  
  
  private

    def producto_params
      params.permit(:id_producto, :descripcion_producto, :precio_producto, :stockCrear)
    end
end