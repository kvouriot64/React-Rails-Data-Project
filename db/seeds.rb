# frozen_string_literal: true

def fetch_data(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)

  data = JSON.parse(response)
  data
end

# insert all planets and characters

def insert_planets_and_people(planets)
  planets['results'].each do |planet|
    new_planet = Planet.new(
      name: planet['name'],
      rotation_period: planet['rotation_period'],
      orbital_period: planet['orbital_period'],
      diameter: planet['diameter'],
      climate: planet['climate'],
      gravity: planet['gravity'],
      terrain: planet['terrain'],
      surface_water: planet['surface_water'],
      population: planet['population'],
      url: planet['url']
    )

    new_planet.save

    residents = planet['residents']

    next unless residents.any?

    residents.each do |resident|
      character = fetch_data(resident.to_s)

      new_character = Character.new(
        name: character['name'],
        height: character['height'],
        mass: character['mass'],
        hair_color: character['hair_color'],
        skin_color: character['skin_color'],
        eye_color: character['eye_color'],
        birth_year: character['birth_year'],
        gender: character['gender'],
        url: character['url'],
        Planet_id: new_planet.id
      )

      new_character.save
    end
  end
end

# Insert species records

def insert_species(species)
  species['results'].each do |_species|
    planet = Planet.where(url: _species['homeworld']).first
    people = _species['people']

    next if planet.nil?

    new_species = Species.new(
      name: _species['name'],
      classification: _species['classification'],
      designation: _species['designation'],
      average_height: _species['average_height'],
      skin_colors: _species['skin_colors'],
      eye_colors: _species['eye_colors'],
      average_lifespan: _species['average_lifespan'],
      language: _species['language'],
      url: _species['url'],
      Planet_id: planet.id
    )

    new_species.save

    next if people.empty?

    # populate bridging table

    people.each do |person|
      # the people/person variable references a link to an object from the api
      species_person = fetch_data(person.to_s)
      character = Character.where(url: species_person['url']).first
      unless character.nil?
        CharactersSpecy.create(Character_id: character.id, Species_id: new_species.id)
      end
    end
  end
end

def populate_assocation_table(parentEntity,
                              _parentModel,
                              childModel,
                              url,
                              bridgingModel,
                              _child_id, _parent_id)
  child_instance = childModel.where(url: url)
  bridgingModel.create(base_id: child_instance.id, parent_id: parentEntity.id)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'net/http'
require 'json'

# Purge bridging tables

CharactersSpecy.destroy_all
CharactersFilm.destroy_all
CharactersFood.destroy_all
FilmsPlanet.destroy_all
FilmsSpecy.destroy_all

# Purge base tables

Food.destroy_all
Species.destroy_all
Film.destroy_all
Character.destroy_all
Planet.destroy_all

url = 'https://swapi.co/api/planets/'
planets = fetch_data(url)

insert_planets_and_people(planets)

url = 'https://swapi.co/api/planets/?page=2'
planets = fetch_data(url)

insert_planets_and_people(planets)

url = 'https://swapi.co/api/planets/?page=3'
planets = fetch_data(url)

insert_planets_and_people(planets)

url = 'https://swapi.co/api/planets/?page=4'
planets = fetch_data(url)

insert_planets_and_people(planets)

url = 'https://swapi.co/api/planets/?page=5'
planets = fetch_data(url)

insert_planets_and_people(planets)

url = 'https://swapi.co/api/planets/?page=6'
planets = fetch_data(url)

insert_planets_and_people(planets)

puts "#{Planet.count} planets"
puts "#{Character.count} characters"
#########################################

url = 'https://swapi.co/api/species/'

species = fetch_data(url)

insert_species(species)

url = 'https://swapi.co/api/species/?page=2'

species = fetch_data(url)

insert_species(species)

url = 'https://swapi.co/api/species/?page=3'

species = fetch_data(url)

insert_species(species)

url = 'https://swapi.co/api/species/?page=4'

species = fetch_data(url)

insert_species(species)

puts "#{CharactersSpecy.count} records in characters_species"
puts "#{Species.count} species"

#########################################

url = 'https://swapi.co/api/films/'

films = fetch_data(url)

films['results'].each do |film|
  new_film = Film.new(
    title: film['title'],
    episode_id: film['episode_id'],
    opening_crawl: film['opening_crawl'],
    director: film['director'],
    producer: film['producer'],
    release_date: film['release_date'],
    url: film['url']
  )

  new_film.save

  characters = film['characters']
  planets = film['planets']
  species = film['species']

  # populate bridging table for characters

  unless characters.empty?
    characters.each do |character|
      character_data = fetch_data(character.to_s)

      # populate_assocation_table(Character, character_data['url'], CharactersFilm, :Character_id, :Film_id)

      char_model = Character.where(url: character_data['url']).first
      unless char_model.nil?
        CharactersFilm.create(Character_id: char_model.id, Film_id: new_film.id)
      end
    end
  end

  # populate bridging table for planets

  unless planets.empty?
    planets.each do |planet|
      planet_data = fetch_data(planet.to_s)

      planet_model = Planet.where(url: planet_data['url']).first

      unless planet_model.nil?
        FilmsPlanet.create(Film_id: new_film.id, Planet_id: planet_model.id)
      end
    end
  end

  # Populate bridging table for species

  species.each do |_species|
    current_species = fetch_data(_species.to_s)
    species_model = Species.where(url: current_species['url']).first

    unless species_model.nil?
      FilmsSpecy.create(Film_id: new_film.id, Species_id: species_model.id)
    end
  end
end

all_species = Species.all

puts "#{FilmsPlanet.count} records in FilmsPlanet"
puts "#{FilmsSpecy.count} records in FilmsSpecies"
puts "#{CharactersFilm.count} records in CharactersFilm"
puts "#{Film.count} films"

#########################################

# insert favourite foods

53.times do
  Food.create(dish: Faker::Food.unique.dish)
end

characters = Character.all

characters.each do |character|
  first_id = Food.first.id
  last_id = Food.first.id + Food.count - 1
  food = Food.find(rand(first_id..last_id))

  rand(1..4).times do
    CharactersFood.create(Character_id: character.id, Food_id: food.id)
  end
end

puts "#{Food.count} foods made"
puts "#{CharactersFood.count} favourite foods assigned to characters"
