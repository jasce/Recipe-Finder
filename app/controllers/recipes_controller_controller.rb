class RecipesControllerController < ApplicationController
  def index
  	@search_term = params[:search] || 'cake'
  	@recipes = Recipe.for(@search_term)
  end
end
