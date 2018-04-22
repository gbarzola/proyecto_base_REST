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

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    
    product = Product.new(product_params)
    
    if Product.exists?(id: product.id)
      if product.save
        render json: {status: 'Exitoso', message: 'Producto creado', data: product}, status: :ok
      else
        render json: {status: 'Error', message: 'No se grabo producto', data: product.errors}, status: :unprocessable_entity
      end
    else
        render json: {status: 'Error', message: 'No debe tener el mismo id', data: product.errors}, status: :unprocessable_entity
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.permit(:id, :descripcion_producto, :precio_producto, :stockCrear)
    end
end