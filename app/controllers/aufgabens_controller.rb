class AufgabensController < ApplicationController
  before_action :set_aufgaben, only: [:show, :edit, :update, :destroy]

  # GET /aufgabens
  # GET /aufgabens.json
  def index
    @aufgaben = Aufgaben.all
    @projekts = Projekt.all
    @arbeitspakets = Arbeitspaket.all
  end

  # GET /aufgabens/1
  # GET /aufgabens/1.json
  def show
  end

  # GET /aufgabens/new
  def new
    @aufgaben = Aufgaben.new
    @ebene = params[:ebene]
    @pid = params[:id]
  end

  # GET /aufgabens/1/edit
  def edit
  end

  # POST /aufgabens
  # POST /aufgabens.json
  def create
    @aufgaben = Aufgaben.new(aufgaben_params)
    
  
    #respond_to do |format|
      if @aufgaben.save
        #format.html { redirect_to @aufgaben, notice: 'Aufgaben was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @aufgaben }
        redirect_to projekts_path
      else
        format.html { render action: 'new' }
        format.json { render json: @aufgaben.errors, status: :unprocessable_entity }
      end
    #end
  end

  # PATCH/PUT /aufgabens/1
  # PATCH/PUT /aufgabens/1.json
  def update
    respond_to do |format|
      if @aufgaben.update(aufgaben_params)
        format.html { redirect_to @aufgaben, notice: 'Aufgaben was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aufgaben.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aufgabens/1
  # DELETE /aufgabens/1.json
  def destroy
    @aufgaben.destroy
    respond_to do |format|
      format.html { redirect_to projekts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aufgaben
      @aufgaben = Aufgaben.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aufgaben_params
      params.require(:aufgaben).permit(:aufgabenname, :aufgabenbeschreibung, :aufgabenvorgaenger, :aufgabennr, :projektsid)
    end
end
