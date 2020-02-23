# frozen_string_literal: true

class Api::CharactersController < ApplicationController
  def index
    @characters = Character.paginate(page: params[:page])
    render json: {
      characters: @characters,
      page: @characters.current_page, # returns an integer corresponding to current page
      pages: @characters.total_pages # returns an integer corresponding to all pages
    }
  end

  def show
    @character = Character.find(params[:id])
    render json: @character
  end
end
