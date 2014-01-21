class RessourcefunctionsController < ApplicationController
  before_action :set_ressourcefunction, only: [:show, :edit, :update, :destroy]

  # GET /ressourcefunctions
  # GET /ressourcefunctions.json
  def index
    @ressourcefunctions = Ressourcefunction.all
  end

  # GET /ressourcefunctions/1
  # GET /ressourcefunctions/1.json
  def show
  end

  # GET /ressourcefunctions/new
  def new
    @ressourcefunction = Ressourcefunction.new
  end

  # GET /ressourcefunctions/1/edit
  def edit
  end

  # POST /ressourcefunctions
  # POST /ressourcefunctions.json
  def create
    @ressourcefunction = Ressourcefunction.new(ressourcefunction_params)

    respond_to do |format|
      if @ressourcefunction.save
        format.html { redirect_to @ressourcefunction, notice: 'Ressourcefunction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ressourcefunction }
      else
        format.html { render action: 'new' }
        format.json { render json: @ressourcefunction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressourcefunctions/1
  # PATCH/PUT /ressourcefunctions/1.json
  def update
    respond_to do |format|
      if @ressourcefunction.update(ressourcefunction_params)
        format.html { redirect_to @ressourcefunction, notice: 'Ressourcefunction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ressourcefunction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressourcefunctions/1
  # DELETE /ressourcefunctions/1.json
  def destroy
    @ressourcefunction.destroy
    respond_to do |format|
      format.html { redirect_to ressourcefunctions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressourcefunction
      @ressourcefunction = Ressourcefunction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ressourcefunction_params
      params.require(:ressourcefunction).permit(:name)
    end
end
