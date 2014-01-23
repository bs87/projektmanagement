class StartsiteController < ApplicationController
 

 	def startsite
		@arbeitspakets = Arbeitspaket.all
		@arbeitspaketvorgaengers = Arbeitspaketvorgaenger.all
	end


def show
    @arbeitspaket = Arbeitspaket.find(params[:id])
  respond_to do |format|
    format.html 
    format.pdf { render :layout => false}
  end
end
end
