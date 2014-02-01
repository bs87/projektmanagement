class VerantwortlichkeitensController < ApplicationController
  before_action :set_verantwortlichkeiten, only: [:show, :edit, :update, :destroy]

  # GET /verantwortlichkeitens
  # GET /verantwortlichkeitens.json
  def index
    @verantwortlichkeitens = Verantwortlichkeiten.all
    @ressourcens = Ressourcen.all
    @arbeitspakets = Arbeitspaket.all
    @arbeitspaketvorgaengers = Arbeitspaketvorgaenger.all
    
      
    if current_user.roleid == 1
      @projekts = Projekt.all
      if params[:id].nil? 
        @projekt = Projekt.first
      else
        @projekt = Projekt.find(:all, :conditions => [ "id = ?", params[:id]]).first 
      end
    else
      if params[:id].nil? 
        @projekt = Projekt.find(:all, :conditions => [ "projektleiter = ?", current_user.email]).first 
      else
        @projekt = Projekt.find(:all, :conditions => [ "id = ?", params[:id]]).first 
      end
      @projekts = Projekt.find(:all, :conditions => [ "projektleiter = ?", current_user.email]) 
    end
  end
  
  # GET /verantwortlichkeitens/1
  # GET /verantwortlichkeitens/1.json
  def show
  end

  def deleteress

  end 

  # GET /verantwortlichkeitens/new
  def new
    @verantwortlichkeiten = Verantwortlichkeiten.new
    @apid = params[:apid]
    @overmax = params[:overmax]
    @vressourcens = Verantwortlichkeiten.find(:all, :conditions => [ "arbeitspaketid = ?", @apid ])
  end

  # POST /verantwortlichkeitens
  # POST /verantwortlichkeitens.json
  def create
    @verantwortlichkeiten = Verantwortlichkeiten.new(verantwortlichkeiten_params)
    @aufgabe = Aufgaben.find(:all, :conditions => [ "id = ?", @verantwortlichkeiten.arbeitspaketid]).first  
    @pid = @aufgabe.projektsid
    #Gewünschte Intensitaet fuer AP
    @intensitaet = verantwortlichkeiten_params.fetch(:intensitaet)   
    #ApId für die zu erstellende Ressource
    @ressourceid = verantwortlichkeiten_params.fetch(:ressourceid) 

    #Vorhandene Intensitate der Ressource (max. Verfügbar)
    @ressource = Ressourcen.find(:all, :conditions => [ "id = ?", @ressourceid ])
    @intensitaetmax = @ressource.first.ressourcemax

    #Berechnung der neuen Intensitaet
    @new_intensitaet = @intensitaetmax.to_i-@intensitaet.to_i

    #Prüfen ob Max überschritten wird
     respond_to do |format|
    if @new_intensitaet<0
      redirect_to new_verantwortlichkeiten_path(:overmax=>true)
    else
      if @verantwortlichkeiten.save
      
        @ressource.first.update( :ressourcemax => @new_intensitaet )
        format.html { redirect_to verantwortlichkeitens_path(:id => @pid), notice: 'Ressource was successfully created.' }
      else
        format.html { redirect_to new_verantwortlichkeiten_path(:apid=> @verantwortlichkeiten.arbeitspaketid, :id => @pid), error: 'intensität fehlt!.' }
        format.json { render json: @verantwortlichkeiten.errors, status: :unprocessable_entity }
      end
    end
    end
  end

  # PATCH/PUT /verantwortlichkeitens/1
  # PATCH/PUT /verantwortlichkeitens/1.json
  def update
    respond_to do |format|
      if @verantwortlichkeiten.update(verantwortlichkeiten_params)
        
        format.html { redirect_to @verantwortlichkeiten, notice: 'Verantwortlichkeiten was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @verantwortlichkeiten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verantwortlichkeitens/1
  # DELETE /verantwortlichkeitens/1.json
  def destroy
    @verantwortlichkeiten = Verantwortlichkeiten.find(params[:id])
@aufgabe = Aufgaben.find(:all, :conditions => [ "id = ?", @verantwortlichkeiten.arbeitspaketid]).first  
    @pid = @aufgabe.projektsid
    #Gewünschte Intensitaet fuer AP
    @intensitaet = params[:intensitaet]
    #@intensitaet = verantwortlichkeiten_params.fetch(:intensitaet)   
    #ApId für die zu erstellende Ressource
    @ressourceid = params[:ressourceid]
    #@ressourceid = verantwortlichkeiten_params.fetch(:ressourceid) 

    #Vorhandene Intensitate der Ressource (max. Verfügbar)
    @ressource = Ressourcen.find(:all, :conditions => [ "id = ?", @ressourceid ])
    @intensitaetmax = @ressource.first.ressourcemax

    #Berechnung der neuen Intensitaet
    @new_intensitaet = @intensitaetmax.to_i+@intensitaet.to_i
  
    @ressource.first.update( :ressourcemax => @new_intensitaet )

    @verantwortlichkeiten.destroy
    
    respond_to do |format|
      format.html { redirect_to verantwortlichkeitens_path(:id => @pid) , alert: 'Verantwortlichkeiten was successfully deleted.'}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verantwortlichkeiten
      @verantwortlichkeiten = Verantwortlichkeiten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verantwortlichkeiten_params
      params.require(:verantwortlichkeiten).permit(:arbeitspaketid, :ressourceid, :intensitaet, :beschreibung)
    end
end
