# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @categories = [Character.name, Planet.name, Food.name, Film.name, Species.name]
  end
end
