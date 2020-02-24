# frozen_string_literal: true

class Api::SearchController < ApplicationController
  def search
    @query = "%#{params[:query].downcase}%"
    @characters = Character.all.where('LOWER(name) LIKE :query', query: @query)
    @planets = Planet.all.where('LOWER(name) LIKE :query', query: @query)
    @species = Species.all.where('lower(name) LIKE :query', query: @query)
    @films = Film.all.where('lower(title) LIKE :query', query: @query)
    @foods = Food.all.where('lower(dish) LIKE :query', query: @query)

    render json: [
      @characters,
      @planets,
      @species,
      @films,
      @foods
    ]
  end
end
