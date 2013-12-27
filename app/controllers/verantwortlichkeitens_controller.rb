class VerantwortlichkeitensController < ApplicationController
  before_action :set_verantwortlichkeiten, only: [:show, :edit, :update, :destroy]

  # GET /verantwortlichkeitens
  # GET /verantwortlichkeitens.json
  def index
    @verantwortlichkeitens = Verantwortlichkeiten.all
  end

  # GET /verantwortlichkeitens/1
  # GET /verantwortlichkeitens/1.json
  def show
  end

  # GET /verantwortlichkeitens/new
  def new
    @verantwortlichkeiten = Verantwortlichkeiten.new
  end

  # GET /verantwortlichkeitens/1/edit
  def edit
  end

  # POST /verantwortlichkeitens
  # POST /verantwortlichkeitens.json
  def create
    @verantwortlichkeiten = Verantwortlichkeiten.new(verantwortlichkeiten_params)

    respond_to do |format|
      if @verantwortlichkeiten.save
        format.html { redirect_to @verantwortlichkeiten, notice: 'Verantwortlichkeiten was successfully created.' }
        format.json { render action: 'show', status: :created, location: @verantwortlichkeiten }
      else
        format.html { render action: 'new' }
        format.json { render json: @verantwortlichkeiten.errors, status: :unprocessable_entity }
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
    @verantwortlichkeiten.destroy
    respond_to do |format|
      format.html { redirect_to verantwortlichkeitens_url }
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
      params.require(:verantwortlichkeiten).permit(:ArbeitspaketID, :RessourceID, :Intensitaet, :Beschreibung, :Ressourcen_RessourcenID)
    end
end
