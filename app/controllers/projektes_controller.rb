class ProjektesController < ApplicationController
  load_and_authorize_resource 
  before_action :set_projekte, only: [:show, :edit, :update, :destroy]

  # GET /projektes
  # GET /projektes.json
  def index
      @user = current_user
      if @user==nil
        flash[:error] ="Zugriff verweigert."
        redirect_to root_url
      end
    @projektes = Projekte.all
  end

  # GET /projektes/1
  # GET /projektes/1.json
  def show
  end

  # GET /projektes/new
  def new
    @projekte = Projekte.new
  end

  # GET /projektes/1/edit
  def edit
  end

  # POST /projektes
  # POST /projektes.json
  def create
    @projekte = Projekte.new(projekte_params)
    respond_to do |format|
      if @projekte.save
        format.html { redirect_to @projekte, notice: 'Projekte was successfully created.' }
        format.json { render action: 'show', status: :created, location: @projekte }
      else
        format.html { render action: 'new' }
        format.json { render json: @projekte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projektes/1
  # PATCH/PUT /projektes/1.json
  def update
    respond_to do |format|
      if @projekte.update(projekte_params)
        format.html { redirect_to @projekte, notice: 'Projekte was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projekte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projektes/1
  # DELETE /projektes/1.json
  def destroy
    @projekte.destroy
    respond_to do |format|
      format.html { redirect_to projektes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projekte
      @projekte = Projekte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projekte_params
      params.require(:projekte).permit(:name, :status, :kosten, :projektstart, :projektende)
    end
end
