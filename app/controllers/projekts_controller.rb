class ProjektsController < ApplicationController
  before_action :set_projekt, only: [:show, :edit, :update, :destroy]

  # GET /projekts
  # GET /projekts.json
  def index

    if current_user.roleid ==1
      @projekts = Projekt.all
      @projekt = Projekt.first
    else
      @projekts = Projekt.find(:all, :conditions=>["projektleiter=?", current_user.email])
    end

    if params[:id].nil? 
      @projekt = Projekt.find(:all, :conditions => [ "projektleiter = ?", current_user.email]).first 
    else
      @projekt = Projekt.find(:all, :conditions => [ "id = ?", params[:id]]).first 
    end
 
    @tree = params[:view]


    @aufgaben = Aufgaben.all
    @arbeitspakets = Arbeitspaket.all
  end

  # GET /projekts/1
  # GET /projekts/1.json
  def show
  end
   

   def pdfuebersicht
    if params[:id].nil? 
    @projekt = Projekt.find(:all, :conditions => [ "projektleiter = ?", current_user.email]).first 
  else
    @projekt = Projekt.find(:all, :conditions => [ "id = ?", params[:id]]).first 
  end
    @projekts = Projekt.all
    @aufgaben = Aufgaben.all
    @arbeitspakets = Arbeitspaket.all

  
  respond_to do |format|
    format.html
    format.pdf do
 render :pdf => @projekt.projektname ,
               :template => 'projekts/pdfuebersicht.html.erb',
               :orientation => 'portrait',
               :page_size                      => 'A4', 
               :layout => false,
               :print_media_type => true
    
   end
  end
end
  # GET /projekts/new
  def new
    @projekt = Projekt.new
  end

  # GET /projekts/1/edit
  def edit
  end

  # POST /projekts
  # POST /projekts.json
  def create
    @projekt = Projekt.new(projekt_params)


    if @projekt.save
      redirect_to projekts_path
      #format.html { redirect_to @projekt, notice: 'Projekt was successfully created.' }
      #format.json { render action: 'show', status: :created, location: @projekt }
    else
      format.html { render action: 'new' }
      format.json { render json: @projekt.errors, status: :unprocessable_entity }
    end

  end

  # PATCH/PUT /projekts/1
  # PATCH/PUT /projekts/1.json
  def update
    respond_to do |format|
      if @projekt.update(projekt_params)
        format.html { redirect_to @projekt, notice: 'Projekt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projekt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projekts/1
  # DELETE /projekts/1.json
  def destroy
     @projekt = Projekt.find(params[:id])
   
    @projekt.destroy
    respond_to do |format|
      format.html { redirect_to projekts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projekt
      @projekt = Projekt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projekt_params
      params.require(:projekt).permit(:projektname, :projektleiter, :projektstart, :projektende, :projektbeschreibung, :roadstops_roadstopsid, :aufgaben_aufgabenid, :view)
    end
end
