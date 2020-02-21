# frozen_string_literal: true

class Api::CharactersController < ApplicationController
  def index
    @characters = Character.all.includes(:films, :characters_foods, :planet, :foods, :characters_foods, :species, :characters_species)
    render json: @characters
  end

  def show
    @character = Character.find(params[:id])
    render json: @character
  end
end
