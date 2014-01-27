class ProduktkategoriesController < ApplicationController
  before_action :set_produktkategory, only: [:show, :edit, :update, :destroy]

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
    @produktkategory = Produktkategorie.new
    @projektid = params[:projektid]
    @vorgaenger = params[:vorgaenger]
  end

  # GET /produktkategories/1/edit
  def edit
  end

  # POST /produktkategories
  # POST /produktkategories.json
  def create
    @produktkategory = Produktkategorie.new(produktkategory_params)

    respond_to do |format|
      if @produktkategory.save
        format.html { redirect_to @produktkategory, notice: 'Produktkategorie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @produktkategory }
      else
        format.html { render action: 'new' }
        format.json { render json: @produktkategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produktkategories/1
  # PATCH/PUT /produktkategories/1.json
  def update
    respond_to do |format|
      if @produktkategory.update(produktkategory_params)
        format.html { redirect_to @produktkategory, notice: 'Produktkategorie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @produktkategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produktkategories/1
  # DELETE /produktkategories/1.json
  def destroy
    @produktkategory.destroy
    respond_to do |format|
      format.html { redirect_to produktkategories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produktkategory
      @produktkategory = Produktkategorie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produktkategory_params
      params.require(:produktkategory).permit(:name, :projekt_id, :vorgaenger_id)
    end
end
