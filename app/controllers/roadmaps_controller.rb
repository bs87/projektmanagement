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
    


  if current_user.roleid ==1
      @projekts = Projekt.all
      if params[:id].nil? 
        @projekt = Projekt.first
      else
        @projekt = Projekt.find(:all, :conditions => [ "id = ?", params[:id]]).first 
      end
    else
      @projekts = Projekt.find(:all, :conditions=>["projektleiter=?", current_user.email])
    
      if params[:id].nil? 
        @projekt = Projekt.find(:all, :conditions => [ "projektleiter = ?", current_user.email]).first 
      else
        @projekt = Projekt.find(:all, :conditions => [ "id = ?", params[:id]]).first 
      end
    end
@gantt = params[:view]

    @projekts = Projekt.all
    @aufgaben = Aufgaben.all
    @arbeitspakets = Arbeitspaket.all
    @arbeitspaketvorgaenger = Arbeitspaketvorgaenger.all
  end

end
