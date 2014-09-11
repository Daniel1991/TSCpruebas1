class InformetecnicosController < ApplicationController
  before_action :set_informetecnico, only: [:show, :edit, :update, :destroy]

  # GET /informetecnicos
  # GET /informetecnicos.json
  def index
    @informetecnicos = Informetecnico.all
  end

  # GET /informetecnicos/1
  # GET /informetecnicos/1.json
  def show
  end

  # GET /informetecnicos/new
  def new
    @informetecnico = Informetecnico.new
  end

  # GET /informetecnicos/1/edit
  def edit
  end

  # POST /informetecnicos
  # POST /informetecnicos.json
  def create
    @informetecnico = Informetecnico.new(informetecnico_params)

    respond_to do |format|
      if @informetecnico.save
        format.html { redirect_to @informetecnico, notice: 'Informetecnico was successfully created.' }
        format.json { render :show, status: :created, location: @informetecnico }
      else
        format.html { render :new }
        format.json { render json: @informetecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informetecnicos/1
  # PATCH/PUT /informetecnicos/1.json
  def update
    respond_to do |format|
      if @informetecnico.update(informetecnico_params)
        format.html { redirect_to @informetecnico, notice: 'Informetecnico was successfully updated.' }
        format.json { render :show, status: :ok, location: @informetecnico }
      else
        format.html { render :edit }
        format.json { render json: @informetecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informetecnicos/1
  # DELETE /informetecnicos/1.json
  def destroy
    @informetecnico.destroy
    respond_to do |format|
      format.html { redirect_to informetecnicos_url, notice: 'Informetecnico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informetecnico
      @informetecnico = Informetecnico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informetecnico_params
      params.require(:informetecnico).permit(:fechaingreso, :hora, :cedulanit, :nombreempresa, :telefono, :direccion, :nombretecnico, :garantia, :servicio, :facturable, :valor, :dispositivo, :marcamodelo, :serialid, :descripcion, :fechasalida, :horasalida, :nombreusuario, :problema_id)
    end
end
