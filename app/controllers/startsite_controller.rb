class StartsiteController < ApplicationController
 

 	def startsite
		@arbeitspakets = Arbeitspaket.all
		@arbeitspaketvorgaengers = Arbeitspaketvorgaenger.all
		if current_user
			@eigene_ress_id = Ressourcen.find(:all, :conditions => ["ressourcename = ?", current_user.email ]).first
			@eigene_verant = Verantwortlichkeiten.find(:all, :conditions => [ "ressourceid = ?", @eigene_ress_id] )
		end
	end


def show
    @arbeitspaket = Arbeitspaket.find(params[:id])
  respond_to do |format|
    format.html 
    format.pdf { render :layout => false}
  end
end
end
