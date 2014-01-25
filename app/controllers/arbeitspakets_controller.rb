class ArbeitspaketsController < ApplicationController
  before_action :set_arbeitspaket, only: [:show, :edit, :update, :destroy]

  # GET /arbeitspakets
  # GET /arbeitspakets.json
  def index
    @arbeitspakets = Arbeitspaket.all
  end

  # GET /arbeitspakets/1
  # GET /arbeitspakets/1.json
  def show
  end

  # GET /arbeitspakets/new
  def new
    @arbeitspaket = Arbeitspaket.new
    @aid = params[:aufgabeid]
    @anzahlwerte = params[:anzahlwerte]
  end

  # GET /arbeitspakets/1/edit
  def edit
  end

  # POST /arbeitspakets
  # POST /arbeitspakets.json
  def create
    @arbeitspaket = Arbeitspaket.new(arbeitspaket_params) 

    #respond_to do |format|
      if @arbeitspaket.save
        flash[:notice] ="Arbeitspaket was successfully created."
        #format.json { render action: 'show', status: :created, location: @arbeitspaket }
        redirect_to aufgabens_path
      else
        format.html { render action: 'new' }
        format.json { render json: @arbeitspaket.errors, status: :unprocessable_entity }
      end
    #end
  end

  # PATCH/PUT /arbeitspakets/1
  # PATCH/PUT /arbeitspakets/1.json
  def update
    #respond_to do |format|
      if @arbeitspaket.update(arbeitspaket_params)
        format.html { redirect_to @arbeitspaket, notice: 'Arbeitspaket wurde erstellt.' }
        #format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @arbeitspaket.errors, status: :unprocessable_entity }
      end
    #end
  end

  # DELETE /arbeitspakets/1
  # DELETE /arbeitspakets/1.json
  def destroy
    
    @arbeitspaket = Arbeitspaket.find(params[:id])
   
    @arbeitspaket.destroy
    flash[:notice] ="Arbeitspaket wurde gelöscht."
    respond_to do |format|
      format.html { redirect_to aufgabens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arbeitspaket
      @arbeitspaket = Arbeitspaket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arbeitspaket_params
      params.require(:arbeitspaket).permit(:produkt_id, :arbeitspaketname, :arbeitspaketbeschreibung, :arbeitspakettyp, :arbeitspaketdauer, :arbeitspaketeingangsdokumente, :arbeitspaketausgangsdokumente, :aufgabeid)
    end
end
