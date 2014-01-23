class RoadmapsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

# GET /projekts
  # GET /projekts.json
  def index
    
    if params[:id].nil? 
    @projekt = Projekt.find(:all, :conditions => [ "projektleiter = ?", current_user.email]).first 
  else
    @projekt = Projekt.find(:all, :conditions => [ "id = ?", params[:id]]).first 
  end
    @projekts = Projekt.all
    @aufgaben = Aufgaben.all
    @arbeitspakets = Arbeitspaket.all
    @arbeitspaketvorgaenger = Arbeitspaketvorgaenger.all
  end

end
