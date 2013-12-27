class RoadstopsController < ApplicationController
  before_action :set_roadstop, only: [:show, :edit, :update, :destroy]

  # GET /roadstops
  # GET /roadstops.json
  def index
    @roadstops = Roadstop.all
  end

  # GET /roadstops/1
  # GET /roadstops/1.json
  def show
  end

  # GET /roadstops/new
  def new
    @roadstop = Roadstop.new
  end

  # GET /roadstops/1/edit
  def edit
  end

  # POST /roadstops
  # POST /roadstops.json
  def create
    @roadstop = Roadstop.new(roadstop_params)

    respond_to do |format|
      if @roadstop.save
        format.html { redirect_to @roadstop, notice: 'Roadstop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @roadstop }
      else
        format.html { render action: 'new' }
        format.json { render json: @roadstop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roadstops/1
  # PATCH/PUT /roadstops/1.json
  def update
    respond_to do |format|
      if @roadstop.update(roadstop_params)
        format.html { redirect_to @roadstop, notice: 'Roadstop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @roadstop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roadstops/1
  # DELETE /roadstops/1.json
  def destroy
    @roadstop.destroy
    respond_to do |format|
      format.html { redirect_to roadstops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roadstop
      @roadstop = Roadstop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roadstop_params
      params.require(:roadstop).permit(:Roadstopspart, :Roadstopsdate, :ProjektID)
    end
end
