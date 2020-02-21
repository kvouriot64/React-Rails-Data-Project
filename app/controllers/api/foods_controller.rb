# frozen_string_literal: true

class Api::FoodsController < ApplicationController
  def index
    @foods = Food.all.includes(:character)

    render json: @foods
  end

  def show
    @food = Food.find(params[:id]).includes(:character)

    render json: @food
  end
end
