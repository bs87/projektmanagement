class RessourcensController < ApplicationController
  before_action :set_ressourcen, only: [:show, :edit, :update, :destroy]

  # GET /ressourcens
  # GET /ressourcens.json
  def index
    @ressourcens = Ressourcen.all
  end

  # GET /ressourcens/1
  # GET /ressourcens/1.json
  def show
  end

  # GET /ressourcens/new
  def new
    @ressourcen = Ressourcen.new
  end

  # GET /ressourcens/1/edit
  def edit
  end

  # POST /ressourcens
  # POST /ressourcens.json
  def create
    @ressourcen = Ressourcen.new(ressourcen_params)

    respond_to do |format|
      if @ressourcen.save
        format.html { redirect_to @ressourcen, notice: 'Ressourcen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ressourcen }
      else
        format.html { render action: 'new' }
        format.json { render json: @ressourcen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressourcens/1
  # PATCH/PUT /ressourcens/1.json
  def update
    respond_to do |format|
      if @ressourcen.update(ressourcen_params)
        format.html { redirect_to @ressourcen, notice: 'Ressourcen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ressourcen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressourcens/1
  # DELETE /ressourcens/1.json
  def destroy
    @ressourcen.destroy
    respond_to do |format|
      format.html { redirect_to ressourcens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressourcen
      @ressourcen = Ressourcen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ressourcen_params
      params.require(:ressourcen).permit(:ressourcename, :ressourcebeschreibung, :ressourceart, :ressourcekuerzel, :ressourcegenerisch, :ressourcemax)
    end
end
