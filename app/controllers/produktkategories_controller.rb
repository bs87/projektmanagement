class ProduktkategoriesController < ApplicationController
  before_action :set_produktkategorie, only: [:show, :edit, :update, :destroy]

  # GET /produktkategories
  # GET /produktkategories.json
  def index
    @produktkategories = Produktkategorie.all
  end

  # GET /produktkategories/1
  # GET /produktkategories/1.json
  def show
  end

  # GET /produktkategories/new
  def new
    @produktkategorie = Produktkategorie.new
    @projektid = params[:projektid]
    @vorgaenger = params[:vorgaenger]
  end

  # GET /produktkategories/1/edit
  def edit
  end

  # POST /produktkategories
  # POST /produktkategories.json
  def create
    @produktkategorie = Produktkategorie.new(produktkategorie_params)

    respond_to do |format|
      if @produktkategorie.save

        format.html { redirect_to produkts_path(:projekt => @produktkategorie.projekt_id), notice: 'Produktkategorie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @produktkategorie }
      else
        format.html { redirect_to new_produktkategory_path(:projektid => @produktkategorie.projekt_id), alert: 'Name muss angegeben werden.'}
        format.json { render json: produkts_path(:projekt => @produktkategorie.projekt_id), status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produktkategories/1
  # PATCH/PUT /produktkategories/1.json
  def update
    respond_to do |format|
      if @produktkategorie.update(produktkategorie_params)
        format.html { redirect_to @produktkategorie, notice: 'Produktkategorie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @produktkategorie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produktkategories/1
  # DELETE /produktkategories/1.json
  def destroy
    @produktkategorie = Produktkategorie.find(params[:id])
    @projektid = @produktkategorie.projekt_id
    @produktkategorie.destroy
    respond_to do |format|
      format.html { redirect_to produkts_path(:projekt => @projektid), alert: 'Produktkategorie was successfully deleted.'}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produktkategorie
      @produktkategorie = Produktkategorie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produktkategorie_params
      params.require(:produktkategorie).permit(:name, :projekt_id, :vorgaenger_id)
    end
end
