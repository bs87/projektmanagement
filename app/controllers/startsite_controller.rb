class StartsiteController < ApplicationController
 	def startsite
		@arbeitspakets = Arbeitspaket.all
		@arbeitspaketvorgaengers = Arbeitspaketvorgaenger.all
	end
end
