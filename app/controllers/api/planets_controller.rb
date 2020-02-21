# frozen_string_literal: true

class Api::PlanetsController < ApplicationController
  def index
    @planets = Planet.all.includes(:species, :character, :films)
    render json: @planets
  end

  def show
    @planet = Planet.find(params[:id])
    render json: @planet
  end
end
