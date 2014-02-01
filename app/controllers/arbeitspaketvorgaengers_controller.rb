class ArbeitspaketvorgaengersController < ApplicationController
  before_action :set_arbeitspaketvorgaenger, only: [:show, :edit, :update, :destroy]

  # GET /arbeitspaketvorgaengers
  # GET /arbeitspaketvorgaengers.json
  def index
    @arbeitspaketvorgaengers = Arbeitspaketvorgaenger.all
  end

  # GET /arbeitspaketvorgaengers/1
  # GET /arbeitspaketvorgaengers/1.json
  def show
  end

  # GET /arbeitspaketvorgaengers/new
  def new
    @arbeitspaketvorgaengers = Arbeitspaketvorgaenger.all
    @arbeitspaketvorgaenger = Arbeitspaketvorgaenger.new
    @apid = params[:apid]
  end

  # GET /arbeitspaketvorgaengers/1/edit
  def edit
  end

  # POST /arbeitspaketvorgaengers
  # POST /arbeitspaketvorgaengers.json
  def create
    @arbeitspaketvorgaenger = Arbeitspaketvorgaenger.new(arbeitspaketvorgaenger_params)
    @aufgabe = Aufgaben.find(:all, :conditions => [ "id = ?", @arbeitspaketvorgaenger.apid]).first  
    @pid = @aufgabe.projektsid
    respond_to do |format|
      if @arbeitspaketvorgaenger.save
        format.html { redirect_to verantwortlichkeitens_path(:id => @pid), notice: 'Arbeitspaketvorgaenger was successfully created.' }
        format.json { render action: 'show', status: :created, location: @arbeitspaketvorgaenger }
      else 
        format.html { redirect_to new_arbeitspaketvorgaenger_path(:apid=>@arbeitspaketvorgaenger.apid, :id => @pid), error: 'Arbeitspaketvorgaenger auswählen!.' }
        format.json { render json: @arbeitspaketvorgaenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arbeitspaketvorgaengers/1
  # PATCH/PUT /arbeitspaketvorgaengers/1.json
  def update
    respond_to do |format|
      if @arbeitspaketvorgaenger.update(arbeitspaketvorgaenger_params)
        format.html { redirect_to @arbeitspaketvorgaenger, notice: 'Arbeitspaketvorgaenger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @arbeitspaketvorgaenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arbeitspaketvorgaengers/1
  # DELETE /arbeitspaketvorgaengers/1.json
  def destroy
    @aufgabe = Aufgaben.find(:all, :conditions => [ "id = ?", @arbeitspaketvorgaenger.apid]).first  
    @pid = @aufgabe.projektsid
    @arbeitspaketvorgaenger.destroy
    respond_to do |format|
      format.html { redirect_to verantwortlichkeitens_path(:id => @pid), alert: 'Arbeitspaketvorgaenger was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arbeitspaketvorgaenger
      @arbeitspaketvorgaenger = Arbeitspaketvorgaenger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arbeitspaketvorgaenger_params
      params.require(:arbeitspaketvorgaenger).permit(:apid, :apvorgaengerid)
    end
end
