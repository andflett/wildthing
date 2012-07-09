class ConceptsController < ApplicationController

  def index
    @concepts = Concept.all
  end

	def show
	  @concept = Concept.find_by_slug(params[:id])
	end

end
