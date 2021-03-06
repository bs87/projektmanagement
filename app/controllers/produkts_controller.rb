class ProduktsController < ApplicationController
  before_action :set_produkt, only: [:show, :edit, :update, :destroy]

  # GET /produkts
  # GET /produkts.json
  def index
    @projektid = params[:projekt]
    @produktkats = Produktkategorie.find(:all, :conditions=>["projekt_id=?",@projektid])
    @produkte = Array.new  
    

    @produktkats.each do |kat|
      @produkt = Produkt.find( :all, :conditions=>["kat_id=?", kat.id])
      @produkte.concat @produkt
    end
  end

  # GET /produkts/1
  # GET /produkts/1.json
  def show
  end

  # GET /produkts/new
  def new
    @produkt = Produkt.new
    @pid = params[:projektid]
  end

  # GET /produkts/1/edit
  def edit
  
    @kat_id = params[:katid]
  end


  # POST /produkts
  # POST /produkts.json
  def create
    @produkt = Produkt.new(produkt_params)
    @ap =  Produktkategorie.find(:all, :conditions => [ "id = ?", produkt_params.fetch(:kat_id)]).first 
    @pid = @ap.projekt_id
    @katid = produkt_params.fetch(:kat_id)
    respond_to do |format|
      if @produkt.save
        format.html { redirect_to produkts_path(:projekt => @pid), notice: 'Produkt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @produkt }
      else
        format.html { redirect_to new_produkt_path(:katid => @katid, :projektid => @pid  ), alert: 'Name muss angegeben werden.'}
        format.json { render json: @produkt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produkts/1
  # PATCH/PUT /produkts/1.json
  def update
    @ap =  Produktkategorie.find(:all, :conditions => [ "id = ?", produkt_params.fetch(:kat_id)]).first 
    @pid = @ap.projekt_id
    respond_to do |format|
      if @produkt.update(produkt_params)
        format.html { redirect_to produkts_path(:projekt => @pid), notice: 'Produkt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @produkt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produkts/1
  # DELETE /produkts/1.json
  def destroy
    @produkt = Produkt.find(params[:id])
    @ap =  Produktkategorie.find(:all, :conditions => [ "id = ?", @produkt.kat_id] ).first 
    @pid = @ap.projekt_id
    @produkt.destroy
    respond_to do |format|
      format.html { redirect_to produkts_path(:projekt => @pid), alert: 'Produkt was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produkt
      @produkt = Produkt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produkt_params
      params.require(:produkt).permit(:name, :typ, :ap_id, :kat_id)
    end
end
