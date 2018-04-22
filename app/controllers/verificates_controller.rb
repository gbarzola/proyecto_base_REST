class VerificatesController < ApplicationController
  before_action :set_verificate, only: [:show, :edit, :update, :destroy]

  # GET /verificates
  # GET /verificates.json
  def index
    @verificates = Verificate.all
  end

  # GET /verificates/1
  # GET /verificates/1.json
  def show
  end

  # GET /verificates/new
  def new
    @verificate = Verificate.new
  end

  # GET /verificates/1/edit
  def edit
  end

  # POST /verificates
  # POST /verificates.json
  def create
    @verificate = Verificate.new(verificate_params)

    respond_to do |format|
      if @verificate.save
        format.html { redirect_to @verificate, notice: 'Verificate was successfully created.' }
        format.json { render :show, status: :created, location: @verificate }
      else
        format.html { render :new }
        format.json { render json: @verificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verificates/1
  # PATCH/PUT /verificates/1.json
  def update
    respond_to do |format|
      if @verificate.update(verificate_params)
        format.html { redirect_to @verificate, notice: 'Verificate was successfully updated.' }
        format.json { render :show, status: :ok, location: @verificate }
      else
        format.html { render :edit }
        format.json { render json: @verificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verificates/1
  # DELETE /verificates/1.json
  def destroy
    @verificate.destroy
    respond_to do |format|
      format.html { redirect_to verificates_url, notice: 'Verificate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verificate
      @verificate = Verificate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verificate_params
      params.fetch(:verificate, {})
    end
end
