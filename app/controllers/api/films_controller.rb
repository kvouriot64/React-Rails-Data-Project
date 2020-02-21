# frozen_string_literal: true

class Api::FilmsController < ApplicationController
  def index
    @Films = Film.all.order(episode_id: :asc).includes

    render json: @Films
  end

  def show; end
end
