class PartnersController < ApplicationController

	def index
	  @partners = Partner.order('priority ASC').all
	end

end
