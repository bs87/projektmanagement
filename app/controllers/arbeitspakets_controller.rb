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
    @aid = params[:aufgabeid]
    @anzahlwerte = params[:anzahlwerte]
  end

  # POST /arbeitspakets
  # POST /arbeitspakets.json
  def create
    @arbeitspaket = Arbeitspaket.new(arbeitspaket_params) 
@aufgabe = Aufgaben.find(:all, :conditions => [ "id = ?", @arbeitspaket.aufgabeid]).first  
@pid = @aufgabe.projektsid
    respond_to do |format|
      if @arbeitspaket.save
        format.html { redirect_to aufgabens_path(:id => @pid), notice: 'Arbeitspaket was successfully created.' }
      else
        format.html { redirect_to new_arbeitspaket_path(:aufgabeid =>  @arbeitspaket.aufgabeid,:pid=>@pid), alert: 'Fehlerhafte Daten.' }
        format.json { render json: @arbeitspaket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arbeitspakets/1
  # PATCH/PUT /arbeitspakets/1.json
  def update
    @aufgabe = Aufgaben.find(:all, :conditions => [ "id = ?", arbeitspaket_params.fetch(:aufgabeid)]).first  
@pid = @aufgabe.projektsid
    respond_to do |format|
      if @arbeitspaket.update(arbeitspaket_params)
        format.html { redirect_to aufgabens_path(:id => @pid), notice: 'Arbeitspaket wurde geändert.' }
        #format.json { head :no_content }
      else
        format.html { redirect_to edit_arbeitspaket_path(:aufgabeid =>  @aufgabe.id,:pid=>@pid), alert: 'Fehlerhafte Daten.' }
        format.json { render json: @arbeitspaket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arbeitspakets/1
  # DELETE /arbeitspakets/1.json
  def destroy
    
    @arbeitspaket = Arbeitspaket.find(params[:id])
  @aufgabe = Aufgaben.find(:all, :conditions => [ "id = ?", @arbeitspaket.aufgabeid]).first  
@pid = @aufgabe.projektsid
    @arbeitspaket.destroy
    respond_to do |format|
      format.html { redirect_to aufgabens_path(:id => @pid), notice: 'Arbeitspaket wurde gelöscht.' }
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
